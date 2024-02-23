import torch
import torch.nn as nn
import torch.nn.functional as F
import dgl.function as fn
from dgl.nn.functional import edge_softmax
import dgl
import time
import numpy as np
import random
import networkx as nx
import math
import matplotlib.pyplot as plt
import dgl.nn.pytorch

device = torch.device('cuda:1' if torch.cuda.is_available() else 'cpu')
# seed = 826
# torch.manual_seed(seed)
# torch.cuda.manual_seed(seed)
# torch.cuda.manual_seed_all(seed)
cos = nn.CosineSimilarity(dim=1, eps=1e-8)


def plot(value, name):
    plt.plot(range(1, len(value) + 1), value)
    plt.xlabel('Epoch')
    plt.ylabel('{}'.format(name))
    plt.title('{} with Epoch'.format(name))
    plt.show()
    pass


class Mlp(nn.Module):
    def __init__(self, node_in_feats):
        super(Mlp, self).__init__()
        self.fc0 = nn.Linear(node_in_feats, node_in_feats * 2)
        self.fc1 = nn.Linear(node_in_feats * 2, node_in_feats)
        self.norm = nn.LayerNorm(node_in_feats)
        self.reset_parameters()

    def reset_parameters(self):
        nn.init.xavier_uniform_(self.fc0.weight)
        nn.init.xavier_uniform_(self.fc1.weight)

    def forward(self, x):
        x = x + self.fc1(F.relu(self.fc0(self.norm(x))))
        return x


class EGT(nn.Module):
    def __init__(self, dim):
        super(EGT, self).__init__()
        # A linear submodule for projecting the input and neighbor feature to the output.
        self.num_heads = int(dim / 3)
        self.q = nn.Linear(dim, dim)
        self.k = nn.Linear(dim, dim)
        self.v = nn.Linear(dim, dim)
        self.vv = nn.Linear(dim + self.num_heads, dim)
        self.edge_e = nn.Linear(self.num_heads, self.num_heads)
        self.edge_b = nn.Linear(self.num_heads, self.num_heads)
        self.fc_edge0 = nn.Linear(self.num_heads, self.num_heads * 2)
        self.fc_edge1 = nn.Linear(self.num_heads * 2, self.num_heads)
        self.norm_node0 = nn.LayerNorm(dim)
        self.norm_edge0 = nn.LayerNorm(self.num_heads)
        self.norm_edge1 = nn.LayerNorm(self.num_heads)
        self.w = nn.Parameter(torch.zeros(1))
        self.up_expert = Mlp(dim)
        self.d_k = dim
        self.scale = 2
        self.reset_parameters()

    def reset_parameters(self):
        nn.init.xavier_uniform_(self.q.weight)
        nn.init.xavier_uniform_(self.k.weight)
        nn.init.xavier_uniform_(self.v.weight)
        nn.init.xavier_uniform_(self.vv.weight)
        nn.init.xavier_uniform_(self.edge_e.weight)
        nn.init.xavier_uniform_(self.edge_b.weight)
        nn.init.xavier_uniform_(self.fc_edge0.weight)
        nn.init.xavier_uniform_(self.fc_edge1.weight)

    def src_dot_dst(self, src_field, dst_field, out_field):
        def func(edges):
            return {out_field: (edges.src[src_field] * edges.dst[dst_field]).sum(-1)}  # 5个1*1的向量拼接起来

        return func

    def forward(self, g, feat, edge):
        h = self.norm_node0(feat)
        edge_weight = self.norm_edge0(edge)
        g.ndata['q'] = self.q(h).reshape(g.num_nodes(), self.num_heads, -1)
        g.ndata['k'] = self.k(h).reshape(g.num_nodes(), self.num_heads, -1)
        g.ndata['v'] = self.v(h).reshape(g.num_nodes(), self.num_heads, -1)
        g.edata['v'] = self.edge_e(edge_weight).reshape(g.num_edges(), self.num_heads, -1)
        q = g.ndata['q']
        B = self.edge_b(edge_weight)
        g.apply_edges(self.src_dot_dst('k', 'q', 'score'))
        score = g.edata['score']
        g.edata['score'] = g.edata['score'] / self.scale + B
        e = g.edata['score'].view(g.num_edges(), -1) + edge
        g.apply_edges(lambda edges: {
            'se': torch.cat((edges.src['v'], edges.data['v']), dim=-1)})
        se = g.edata['se']
        g.edata['att'] = edge_softmax(g, g.edata['score'].unsqueeze(-1))
        att = g.edata['att']
        g.edata['a'] = g.edata['att'] * g.edata['se']
        a = g.edata['a']
        g.update_all(fn.copy_e('a', 'm'), fn.sum('m', 'agg_u'))
        agg = g.ndata['agg_u']
        h = feat * (1 + self.w) + self.vv(g.ndata['agg_u'].view(g.num_nodes(), -1))
        h = self.up_expert(h)
        e = e + self.fc_edge1(F.relu(self.fc_edge0(self.norm_edge1(e))))
        return h, e


class My_lossfun(nn.Module):
    def __init__(self):
        super(My_lossfun, self).__init__()
        return

    def forward(self, score, label):
        ys = -score * label
        q = (torch.exp(ys))
        k = torch.tensor(1) + q
        loss = torch.log(k).mean()

        return loss


class GAT(nn.Module):
    def __init__(self, g, node_feats, edge_feats):
        super(GAT, self).__init__()
        self.g = g
        # loss fc
        self.xent = My_lossfun()
        self.node_feats = node_feats
        self.edge_feats = edge_feats

        self.egt1 = EGT(self.node_feats)

        # self.conv1 = dgl.nn.pytorch.GATConv(15, 512, 1)
        # self.conv2 = dgl.nn.pytorch.GATConv(512, 256, 1)
        # self.conv3 = dgl.nn.pytorch.GATConv(256, 15, 1)

    def forward(self, nfeats, efeats, pair1, pair2):
        h, e = self.egt1(self.g, nfeats, efeats)
        h, e = self.egt1(self.g, h, e)
        logits, _ = self.egt1(self.g, h, e)

        # h = F.relu(self.conv1(self.g, nfeats))
        # h = F.relu(self.conv2(self.g, h))
        # logits = self.conv3(self.g, h)
        # logits = logits.view(-1, 15)

        logits_pair1 = torch.index_select(logits, 0, pair1)
        logits_pair2 = torch.index_select(logits, 0, pair2)

        scores = cos(logits_pair1, logits_pair2)
        return scores

    def loss(self, nfeats, efeats, pair1, pair2, labels):
        scores = self.forward(nfeats, efeats, pair1, pair2)
        return self.xent(scores, labels)


def train(save_dir, feat_data, edge_feat_data, model, pair1, pair2, train_label, train_len, test_pair1, test_pair2,
          test_label):

    optimizer = torch.optim.Adam(filter(lambda p: p.requires_grad, model.parameters()), lr=0.002, weight_decay=1e-5)
    # scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=150, gamma=0.5)
    times = []
    epoch = 450
    best = 1e9
    cnt_wait = 0
    best_epoch = 0
    best_batch = 0
    # batch
    batch_size = 256
    num_batch = math.ceil(train_len / batch_size)
    loss_list = []
    G = nx.read_gpickle('{}/graph.pkl'.format(save_dir))
    for e in range(epoch):
        model.train()
        for i in range(num_batch):
            if i < num_batch - 1:
                batch_pair1 = pair1[i * batch_size: i * batch_size + batch_size]
                batch_pair2 = pair2[i * batch_size: i * batch_size + batch_size]
                sub_label = train_label[i * batch_size: i * batch_size + batch_size]
            else:
                batch_pair1 = pair1[i * batch_size: len(pair1)]
                batch_pair2 = pair2[i * batch_size: len(pair2)]
                sub_label = train_label[i * batch_size: len(pair1)]

            start_time = time.time()
            optimizer.zero_grad()

            loss = model.loss(feat_data, edge_feat_data, batch_pair1, batch_pair2, sub_label)

            if loss < best:
                best = loss
                best_epoch = e
                best_batch = i
                cnt_wait = 0
                torch.save(model.state_dict(), '{}/model/model.pkl'.format(save_dir))
            else:
                cnt_wait += 1
            loss.backward()
            optimizer.step()
            end_time = time.time()
            times.append(end_time - start_time)
            # loss_list.append(loss.item())
            # if i + 1 == num_batch:
            #     print("The {}-th epoch, The {}-th batch, ".format(e + 1, i + 1), "Loss: ", loss.item())
            #     print("The {}-th epoch".format(e + 1))
        # scheduler.step()
        print("The {}-th epoch, ".format(e + 1), "Train Loss:{:.4f} ".format(loss.item()))
    # plot(loss_list, 'Loss')
    print('Loading {}th epoch {}th batch'.format(best_epoch + 1, best_batch + 1))
    pass


