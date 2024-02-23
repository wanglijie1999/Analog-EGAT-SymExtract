import random
import dgl
import networkx as nx
import numpy as np
import torch
import torch.nn.functional as F
from my_Egatnet import GAT

device = torch.device('cuda:1' if torch.cuda.is_available() else 'cpu')


# seed = 826
# torch.manual_seed(seed)
# torch.cuda.manual_seed(seed)
# torch.cuda.manual_seed_all(seed)

def shuffle_list(*ls):
    l = list(zip(*ls))
    random.seed(1234)
    random.shuffle(l)
    return zip(*l)


def load_data(data_dir):
    train = []
    test = []
    train_label = []
    test_label = []
    with open("{}/labels.txt".format(data_dir)) as fp:
        for i, line in enumerate(fp):
            info = line.strip().split()
            if int(info[3]) == 1:  # 0=pair[0] 1=pair[1] 2=label 3=test or train
                train.append([int(info[0]), int(info[1])])
                train_label.append(int(info[2]))
                # test.append([int(info[0]), int(info[1])])
                # test_label.append(int(info[2]))
            else:
                test.append([int(info[0]), int(info[1])])
                test_label.append(int(info[2]))

    train_pair1 = []
    train_pair2 = []
    test_pair1 = []
    test_pair2 = []
    train_len = len(train)
    for x in train:
        train_pair1.append(x[0])  # pair[0]
        train_pair2.append(x[1])  # pair[1]
    for x in test:
        test_pair1.append(x[0])
        test_pair2.append(x[1])

    # # all features
    node_feat_data = np.load("{}/node_feats.npy".format(data_dir))  # [num_all_nodes,feat_dim]
    node_feat_data = torch.tensor(node_feat_data, dtype=torch.float32)
    node_feat_data = node_feat_data.to(device)
    node_feat_dim = node_feat_data.shape[1]

    # out degree node feats
    # od_node_feat_data = np.load("{}/out_node_feats.npy".format(data_dir))  # [num_nodes,feat_dim]
    # od_node_feat_data = torch.tensor(od_node_feat_data, dtype=torch.float32)
    # od_node_feat_data = od_node_feat_data.to(device)
    # od_node_feat_dim = od_node_feat_data.shape[1]

    # in degree node feats
    # ind_node_feat_data = np.load("{}/in_node_feats.npy".format(data_dir))  # [num_nodes,feat_dim]
    # ind_node_feat_data = torch.tensor(ind_node_feat_data, dtype=torch.float32)
    # ind_node_feat_data = ind_node_feat_data.to(device)
    # ind_node_feat_dim = ind_node_feat_data.shape[1]

    # feat_data = (od_node_feat_data, ind_node_feat_data)

    # edge feats
    edge_feat_data = np.load("{}/edge_feats.npy".format(data_dir))  # [num_edges,feat_dim]
    edge_feat_data = torch.tensor(edge_feat_data, dtype=torch.float32)
    edge_feat_data = edge_feat_data.to(device)
    edge_feat_dim = edge_feat_data.shape[1]

    np.random.seed(1)
    random.seed(1)
    fused_train = [list(x) for x in shuffle_list(train_pair1, train_pair2, train_label)]
    train_pair1_list = fused_train[0]
    train_pair2_list = fused_train[1]
    train_label_list = fused_train[2]

    pair1 = torch.tensor(train_pair1_list).to(device)
    pair2 = torch.tensor(train_pair2_list).to(device)
    train_label = torch.FloatTensor(np.asarray(train_label_list))
    train_label = train_label.to(device)

    # test_pair1 = torch.tensor(test_pair1).to(device)
    # test_pair2 = torch.tensor(test_pair2).to(device)
    # test_label = torch.FloatTensor(np.asarray(test_label))
    # test_label = test_label.to(device)

    # whole graph
    G = nx.read_gpickle('{}/graph.pkl'.format(data_dir))
    G = dgl.from_networkx(G)
    G = G.to(device)

    model = GAT(g=G, node_feats=node_feat_dim, edge_feats=edge_feat_dim)
    model = model.to(device)

    return node_feat_data, edge_feat_data, model, pair1, pair2, train_label, test_label, test_pair1, test_pair2, train_len


if __name__ == '__main__':
    load_data(" ")
