import warnings
import dgl
import json
import my_parser as parser
import my_readgraph as readgraph
from my_load_data import load_data
from my_Egatnet import *

device = torch.device('cuda:1' if torch.cuda.is_available() else 'cpu')


def filter_size_rule(G, p0, p1):
    pred = np.zeros(len(p0))
    for i in range(len(p0)):
        w1, l1 = G.nodes[p0[i]]['w'], G.nodes[p0[i]]['l']
        w2, l2 = G.nodes[p1[i]]['w'], G.nodes[p1[i]]['l']
        if float(w1) == float(w2) and float(l1) == float(l2):
            pred[i] = 1
        else:
            pred[i] = -1
    return pred


def filter_weights_rule(G, p0, p1):
    pred = np.zeros(len(p0))
    for i in range(len(p0)):
        weights1, weights2 = G.nodes[p0[i]]['weights'], G.nodes[p1[i]]['weights']
        if weights1 == weights2:
            pred[i] = 1
        else:
            pred[i] = -1
    return pred


def filter_nets_rule(G, p0, p1):
    pred = np.zeros(len(p0))
    for i in range(len(p0)):
        nets1, nets2 = G.nodes[p0[i]]['nets'], G.nodes[p1[i]]['nets']
        if len(nets1) == 4 and len(nets2) == 4:
            nets1 = nets1[0:-1]
            nets2 = nets2[0:-1]
        flag = 0
        for n1 in nets1:
            for n2 in nets2:
                if n1 == n2:
                    flag = 1
                    break
            if flag:
                break
        if flag:
            pred[i] = 1
        else:
            pred[i] = -1
    return pred


def type_01_relu(G, p0, p1):
    pred = np.zeros(len(p0))
    for i in range(len(p0)):
        # 获得测试匹配对的nets数据
        nets1, nets2 = G.nodes[p0[i]]['nets'], G.nodes[p1[i]]['nets']
        if len(nets1) == 4 and len(nets2) == 4:
            nets1 = nets1[0:-1]
            nets2 = nets2[0:-1]
        result1 = nets1.count(nets1[0]) == len(nets1)
        result2 = nets2.count(nets2[0]) == len(nets2)
        if result1 or result2:
            pred[i] = -1
        else:
            pred[i] = 1
    return pred


def test_sage(test_pair1, test_pair2, test_label, feat_data, edge_feat_data, file_dir, save_dir):
    start_time = time.time()

    model.load_state_dict(torch.load('{}/model/model.pkl'.format(file_path)))
    G = nx.read_gpickle('{}/graph.pkl'.format(file_dir))
    pair1 = torch.tensor(test_pair1).to(device)
    pair2 = torch.tensor(test_pair2).to(device)
    model.eval()
    test_output = model.forward(feat_data, edge_feat_data, pair1, pair2)
    test_output = test_output.cpu()
    pred = np.where(test_output.data.numpy() < 0.6, -1, 1)

    # size filter
    filt = filter_size_rule(G, test_pair1, test_pair2)
    pred = np.where(pred < filt, pred, filt)
    # weights filter
    filt = filter_weights_rule(G, test_pair1, test_pair2)
    pred = np.where(pred < filt, pred, filt)
    # nets filter
    filt = filter_nets_rule(G, test_pair1, test_pair2)
    pred = np.where(pred < filt, pred, filt)
    # dummy filter
    filt = type_01_relu(G, test_pair1, test_pair2)
    pred = np.where(pred < filt, pred, filt)

    end_time = time.time()
    print("test costs {:.3f}s".format(end_time - start_time))
    all_tp = 0
    all_fp = 0
    all_tn = 0
    all_fn = 0
    with open(file_path + "/" + "test_pair_name.json", 'r') as file:
        loaded_data = json.load(file)
    test_pair_pa = {}
    test_label_pa = {}
    test_pred_pa = {}
    for i, (key, value) in enumerate(loaded_data.items()):
        pair_1 = []
        pair_2 = []
        label = []
        p = []
        for j in range(len(test_pair1)):
            if value[1] >= int(test_pair1[j]) >= value[0]:
                pair_1.append(test_pair1[j])
                pair_2.append(test_pair2[j])
                label.append(test_label[j])
                p.append(pred[j])
        test_label_pa[key] = label
        test_pred_pa[key] = p
        test_pair_pa[key] = [pair_1, pair_2]
    all_tpr = 0
    all_fpr = 0
    all_acc = 0
    all_ppv = 0
    all_f1 = 0
    for key, value in test_label_pa.items():
        true_pos = 0
        false_pos = 0
        true_neg = 0
        false_neg = 0
        for i in range(len(test_pred_pa[key])):
            if test_pred_pa[key][i] == 1 and test_label_pa[key][i] == 1:
                true_pos += 1
                all_tp += 1
            elif test_pred_pa[key][i] == 1 and test_label_pa[key][i] == -1:
                false_pos += 1
                all_fp += 1
            elif test_pred_pa[key][i] == -1 and test_label_pa[key][i] == -1:
                true_neg += 1
                all_tn += 1
            elif test_pred_pa[key][i] == -1 and test_label_pa[key][i] == 1:
                false_neg += 1
                all_fn += 1
            else:
                assert False
        if true_pos == 0 and false_pos == 0:
            PPV = 1.
        else:
            PPV = true_pos / (true_pos + false_pos)
        accuracy = (true_pos + true_neg) / (true_pos + true_neg + false_pos + false_neg)

        if false_pos == 0 and true_neg == 0:
            FPR = 0.
        else:
            FPR = false_pos / (false_pos + true_neg)

        if true_pos == 0 and false_neg == 0:
            TPR = 0.
        else:
            TPR = true_pos / (true_pos + false_neg)
        if true_pos == 0 and false_pos == 0 and false_neg == 0:
            F1 = 0.
        else:
            F1 = 2 * true_pos / (2 * true_pos + false_pos + false_neg)
        print('  {} TP: {} FP: {} TN: {} FN: {}'.format(
            key,
            true_pos,
            false_pos,
            true_neg,
            false_neg))
        print('            TPR: {:.4f} FPR: {:.4f} ACC: {:.4f} PPV: {:.4f} F1: {:.4f}'.format(
            TPR,
            FPR,
            accuracy,
            PPV,
            F1))
        all_tpr += TPR
        all_fpr += FPR
        all_acc += accuracy
        all_ppv += PPV
        all_f1 += F1
    len_of_all = len(test_label_pa)
    print()
    print(" Final     TP: {} FP: {} TN: {} FN: {}".format(all_tp, all_fp, all_tn, all_fn))
    print(" Final    TPR:{:.4f} FPR:{:.4f} PPV:{:.4f} ACC:{:.4f} F1:{:.4f}".format(all_tpr / len_of_all,
                                                                                   all_fpr / len_of_all,
                                                                                   all_ppv / len_of_all,
                                                                                   all_acc / len_of_all,
                                                                                   all_f1 / len_of_all))


if __name__ == '__main__':
    file_path = "../my_readgraph "  # saved file dir from readgraph
    # load_data
    start_time = time.time()
    node_feat_data, edge_feat_data, model, pair1, pair2, train_label, test_label, test_pair1, test_pair2, train_len = load_data(
        file_path)
    end_time = time.time()
    print("load_data costs {:.3f}s".format(end_time - start_time))

    # model
    start_time = time.time()
    train(file_path, node_feat_data, edge_feat_data, model, pair1, pair2, train_label, train_len, test_pair1,
          test_pair2, test_label)
    end_time = time.time()
    print("train costs {:.3f}s".format(end_time - start_time))

    # test
    test_sage(test_pair1, test_pair2, test_label, node_feat_data, edge_feat_data, file_path, file_path)
