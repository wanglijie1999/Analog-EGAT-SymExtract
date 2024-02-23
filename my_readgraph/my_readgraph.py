import numpy as np
import pickle
import networkx as nx
from itertools import combinations
import matplotlib
import operator
import json

matplotlib.use('Agg')
import matplotlib.pyplot as plt

p_types = ['pfet', 'pfet_lvt', 'pmos', 'pmos2v_mac', 'pmos50_ckt', 'pch_5_mac', 'pch_5', 'pch_mac', 'hvtpfet',
           'lvtpfet']
n_types = ['nfet', 'nfet_lvt', 'nmos', 'nmos2v_mac', 'nmos50_ckt', 'nch_5_mac', 'nch_5', 'nch_mac', 'hvtnfet',
           'lvtnfet']
npn_types = ['npnhbeta1a36_mis_ckt']  # npn
pnp_types = ['pnp2_rpo_mis']  # pnp
res_types = ['rpposab', 'resnwsti_pure5v', 'rppolyhri3d3k', 'rppolyhri1k_dis', 'rnpo1rpo_dis', 'res']  # res
cap_types = ['mimcap_2p0_sin', 'cap']  # cap
diode_types = ['diode']  # diode
passive_types = res_types + cap_types
mosfet_types = p_types + n_types
power_types = ['gnd', 'GND', 'vss', 'VSS', 'vdd', 'VDD', 'vcc', 'VCC']
vdd_types = ['vdd', 'VDD', 'vcc', 'VCC']
gnd_types = ['gnd', 'GND', 'vss', 'VSS']
inductance_types = []


class SpiceEntry(object):
    def __init__(self):
        self.name = ""
        self.pins = []
        self.cell = None
        self.attributes = {}

    def __str__(self):
        content = "name: " + self.name
        content += "; pins: " + " ".join(self.pins)
        content += "; cell: " + self.cell
        content += "; attr: " + str(self.attributes)
        return content

    def __repr__(self):
        return self.__str__()


class SpiceSubckt(object):
    def __init__(self):
        self.name = ""
        self.pins = []
        self.entries = []

    def __str__(self):
        content = "subckt: " + self.name + "\n"
        content += "pins: " + " ".join(self.pins) + "\n"
        content += "entries: \n"
        for entry in self.entries:
            content += str(entry) + "\n"
        return content


class SpiceNode(object):
    def __init__(self):
        self.id = None
        self.attributes = {}  # include name (named in hierarchy), cell
        self.pins = []

    def __str__(self):
        content = "SpiceNode( " + str(self.id) + ", " + str(self.attributes) + ", " + str(self.pins) + " )"
        return content

    def __repr__(self):
        return self.__str__()


class SpiceNet(object):
    def __init__(self):
        self.id = None
        self.attributes = {}  # include name
        self.pins = []

    def __str__(self):
        content = "SpiceNet( " + str(self.id) + ", " + str(self.attributes) + ", " + str(self.pins) + " )"
        return content

    def __repr__(self):
        return self.__str__()


class SpicePin(object):
    def __init__(self):
        self.id = None
        self.node_id = None
        self.net_id = None
        self.attributes = {}  # include type

    def __str__(self):
        content = "SpicePin( " + str(self.id) + ", node: " + str(self.node_id) + ", net: " + str(
            self.net_id) + " attributes: " + str(self.attributes) + " )"
        return content

    def __repr__(self):
        return self.__str__()


class SpiceGraph(object):
    def __init__(self):
        self.nodes = []
        self.pins = []
        self.nets = []

    def __str__(self):
        content = "SpiceGraph\n"
        for node in self.nodes:
            content += str(node) + "\n"
        for pin in self.pins:
            content += str(pin) + "\n"
        for net in self.nets:
            content += str(net) + "\n"
        return content


def convert(integer, length):
    bool_list = [0] * length
    bool_list[integer] = 1
    return bool_list


def convert_list(f_list, length):
    bool_list = [0] * length
    for x in f_list:
        bool_list[x] = 1
    return bool_list


def type_rule2(type1, type2):
    if type1 in p_types:
        return type2 in p_types
    if type1 in n_types:
        return type2 in n_types
    return 0


# def type_filter(type1):
#     # types1 = ['pfet', 'pfet_lvt', 'pmos', 'pmos2v_mac', 'pmos50_ckt', 'pch_5_mac', 'pch_5']  # pmos
#     # types2 = ['nfet', 'nfet_lvt', 'nmos', 'nmos2v_mac', 'nmos50_ckt', 'nch_5_mac', 'nch_5']  # nmos
#     # types3 = ['npnhbeta1a36_mis_ckt']  # npn
#     # types4 = []  # pnp
#     # types5 = ['rpposab', 'resnwsti_pure5v', 'rppolyhri3d3k']  # res
#     # types6 = []  # cap
#     # types7 = []  # diode
#     if type1 in p_types:
#         return 'pmos'
#     elif type1 in n_types:
#         return 'nmos'
#     elif type1 in npn_types:
#         return 'npn'
#     elif type1 in pnp_types:
#         return 'pnp'
#     elif type1 in res_types:
#         return 'res'
#     elif type1 in cap_types:
#         return 'cap'
#     elif type1 in diode_types:
#         return 'diode'
#     else:
#         return type1

def type_filter(type1):
    # if type1 in p_types:
    #     return 'pmos'
    # elif type1 in n_types:
    #     return 'nmos'
    # elif type1 in npn_types:
    #     return 'npn'
    # elif type1 in pnp_types:
    #     return 'pnp'
    # elif (type1 in res_types) or (type1 in cap_types):
    #     return 'passive'
    # elif type1 in diode_types:
    #     return 'diode'
    # else:
    #     return type1

    if type1 in p_types:
        return 'pmos'
    elif type1 in n_types:
        return 'nmos'
    elif type1 in npn_types:
        return 'npn'
    elif type1 in pnp_types:
        return 'pnp'
    elif type1 in res_types:
        return 'res'
    elif type1 in cap_types:
        return 'cap'
    elif type1 in diode_types:
        return 'diode'
    elif type1 in inductance_types:
        return 'inductance'
    else:
        return type1


def ground_name_filter(pname):
    if 'gnd' in pname.lower():
        return 1
    if 'vss' in pname.lower():
        return 1
    return 0


def power_name_filter(pname):
    if 'vdd' in pname.lower():
        return 1
    if 'vcc' in pname.lower():
        return 1
    return 0


def pin_filter(p1, p2):
    if p1 == 'drain' and p2 == 'drain':
        return 1
    elif (p1 == 'drain' and p2 == 'source') or (p2 == 'drain' and p1 == 'source'):
        return 2
    elif (p1 == 'drain' and p2 == 'gate') or (p2 == 'drain' and p1 == 'gate'):
        return 3
    elif (p1 == 'drain' and p2 == 'passive') or (p2 == 'drain' and p1 == 'passive'):
        return 4
    elif p1 == 'source' and p2 == 'source':
        return 5
    elif (p1 == 'source' and p2 == 'gate') or (p2 == 'source' and p1 == 'gate'):
        return 6
    elif (p1 == 'source' and p2 == 'passive') or (p2 == 'source' and p1 == 'passive'):
        return 7
    elif p1 == 'gate' and p2 == 'gate':
        return 8
    elif (p1 == 'gate' and p2 == 'passive') or (p2 == 'gate' and p1 == 'passive'):
        return 9
    elif p1 == 'passive' and p2 == 'passive':
        return 10
    else:
        return 0


def pin_filter2(p):
    if p == 'gate':
        return 1
    elif p == 'drain':
        return 2
    elif p == 'source':
        return 3
    elif p == 'substrate' or p == 'hbeta':
        assert (p != 'substrate' and p != 'hbeta')
    elif p == 'passive':
        return 4
    else:
        return 0


def get_nodes_weights(g, snode, left, right):
    nodes_weights = []
    for node in range(left, right):
        if (g.nodes[node]['device'] in p_types) or (g.nodes[node]['device'] in vdd_types):
            path_len = nx.shortest_path_length(g, source=snode[1], target=node, weight='weight')
        elif (g.nodes[node]['device'] in n_types) or (g.nodes[node]['device'] in gnd_types):
            path_len = nx.shortest_path_length(g, source=snode[0], target=node, weight='weight')
        else:
            path_len = 0
        nodes_weights.append(path_len)
    return nodes_weights


def noramlization(data):
    new_data = []
    data_copy = data[:]
    min_Vals = min(data)
    maxVals = max(data)
    for i in range(len(data_copy)):
        if data_copy[i] == min_Vals:
            data_copy[i] = maxVals
    minvals = min(data_copy)
    ranges = maxVals - minvals
    for i in range(0, len(data)):
        if data[i] != -1:
            new_data.append((data[i] - minvals) / ranges)
            # new_data.append(data[i]/maxVals)
        else:
            new_data.append(-1)
    return new_data


def read_graph(file_name, save_dir):
    with open(file_name, "rb") as f:
        dataX, dataY = pickle.load(f)

    G = nx.DiGraph()  # pin included
    num_nodes = 0  # used to merge subgraphs by changing node indices
    all_pairs = []  # store all pos and neg node pairs
    node_type = []  # store types of all nodes
    node_weights = []  # store symbolic electricity potential of all pins
    node_size_feats = []  # size feats
    node_size_feats_w = []
    node_size_feats_l = []
    edge_dic = {}  # this dictionary is to store mutil_edge information
    trainset = [0,1]  # train
    my_test_name = {}
    valid_pair_num = 0
    neg_pair_num = 0
    for i in range(len(dataX)):
        single_valid_pair = 0
        train = i in trainset
        sub_G = nx.Graph()
        graph = dataX[i]["graph"]  # hypergraph
        label = dataY[i]  # symmetry pairs of node indices, self-symmetry if a pair only has one element
        small = len(G.nodes)
        for g in graph.nodes:  # 每个sp文件的所有节点
            # if not (g.attributes['cell'] == 'IO' and g.attributes['name'] not in power_types):
            node_type.append(type_filter(g.attributes['cell']))
            G.add_node(g.id + num_nodes)
            sub_G.add_node(g.id + num_nodes)
            G.nodes[g.id + num_nodes]['name'] = g.attributes['name']
            G.nodes[g.id + num_nodes]['graph'] = i
            if g.attributes['cell'] == 'IO':  # power nodes or GND nodes
                G.nodes[g.id + num_nodes]['type'] = 'IO'
                sub_G.nodes[g.id + num_nodes]['type'] = 'IO'
            else:
                G.nodes[g.id + num_nodes]['type'] = 'device'  # device
                sub_G.nodes[g.id + num_nodes]['type'] = 'device'
            if g.attributes['cell'] in mosfet_types or g.attributes['cell'] in passive_types:  # nmos pmos
                G.nodes[g.id + num_nodes]['w'] = (float(g.attributes['w']) / int(g.attributes['nf'])) * 1e7
                G.nodes[g.id + num_nodes]['l'] = float(g.attributes['l']) * 1e7
                G.nodes[g.id + num_nodes]['device'] = g.attributes['cell']
            else:
                G.nodes[g.id + num_nodes]['w'] = -1
                G.nodes[g.id + num_nodes]['l'] = -1
                G.nodes[g.id + num_nodes]['device'] = '-1'
            # node_size_feats.append(np.array([G.nodes[g.id + num_nodes]['w'], G.nodes[g.id + num_nodes]['l']]))
            node_size_feats_w.append(G.nodes[g.id + num_nodes]['w'])
            node_size_feats_l.append(G.nodes[g.id + num_nodes]['l'])
        for p in graph.pins:
            if p.attributes['type'] not in ['substrate', 'hbeta']:
                if G.nodes[p.node_id + num_nodes].__contains__('nets'):
                    G.nodes[p.node_id + num_nodes]['nets'].append(p.net_id)
                else:
                    net_list = [p.net_id]
                    G.nodes[p.node_id + num_nodes]['nets'] = net_list
            if len(G.nodes[p.node_id + num_nodes]['nets']) == 3 and not all(
                    x == G.nodes[p.node_id + num_nodes]['nets'][0] for x in G.nodes[p.node_id + num_nodes]['nets']):
                # if graph.pins[G.nodes[p.node_id + num_nodes]['nets'][1]].attributes['type'] == 'IO':
                # G.nodes[p.node_id + num_nodes]['nets'].append(-1)
                # else:
                one_node_type = graph.nodes[p.node_id].attributes['cell']
                gate_flag = False
                for pin_order in graph.nets[G.nodes[p.node_id + num_nodes]['nets'][1]].pins:
                    if graph.pins[pin_order].node_id != p.node_id:
                        else_gate_type = graph.pins[pin_order].attributes['type']
                        else_node_type = graph.nodes[graph.pins[pin_order].node_id].attributes['cell']
                        if one_node_type == else_node_type and else_gate_type == 'gate':
                            G.nodes[p.node_id + num_nodes]['nets'].append(1)
                            gate_flag = True
                            break
                if not gate_flag:
                    if graph.pins[G.nodes[p.node_id + num_nodes]['nets'][1]].attributes['type'] == 'IO':
                        G.nodes[p.node_id + num_nodes]['nets'].append(-1)
                    else:
                        G.nodes[p.node_id + num_nodes]['nets'].append(0)
            elif len(G.nodes[p.node_id + num_nodes]['nets']) == 3 and all(
                    x == G.nodes[p.node_id + num_nodes]['nets'][0] for x in G.nodes[p.node_id + num_nodes]['nets']):
                G.nodes[p.node_id + num_nodes]['nets'].append(0)
        # for p in graph.pins:
        #     if p.attributes['type'] not in ['substrate', 'hbeta']:
        #         if G.nodes[p.node_id + num_nodes].__contains__('nets'):
        #             G.nodes[p.node_id + num_nodes]['nets'].append(p.net_id)
        #         else:
        #             net_list = [p.net_id]
        #             G.nodes[p.node_id + num_nodes]['nets'] = net_list
        #     if len(G.nodes[p.node_id + num_nodes]['nets']) == 3:
        #         if graph.pins[G.nodes[p.node_id + num_nodes]['nets'][1]].attributes['type'] == 'IO':
        #             G.nodes[p.node_id + num_nodes]['nets'].append(1)  # 是IO
        #         else:
        #             G.nodes[p.node_id + num_nodes]['nets'].append(0)  # 不是IO
        big = len(G.nodes)
        if not train:
            my_test_name[dataX[i]['subckts'][0].name] = [small, big - 1]
        node_pairs = list(combinations(list(sub_G.nodes()), 2))  # all possible node pairs
        # random.shuffle(node_pairs)
        neg_pairs = []
        neg_size = 10
        for pair in node_pairs:
            if [pair[0] - num_nodes, pair[1] - num_nodes] in label or [pair[1] - num_nodes,
                                                                       pair[0] - num_nodes] in label:
                continue
            if graph.nodes[pair[0] - num_nodes].attributes['cell'] == 'IO' or \
                    graph.nodes[pair[0] - num_nodes].attributes['cell'] == 'IO':
                continue
            type1, type2 = graph.nodes[pair[0] - num_nodes].attributes['cell'], \
                           graph.nodes[pair[1] - num_nodes].attributes['cell']
            poten1, poten2 = graph.nodes[pair[0] - num_nodes].attributes['potential'], \
                             graph.nodes[pair[1] - num_nodes].attributes['potential']
            if (not type_rule2(type1, type2)) or poten1 != poten2:
                continue

            if train:
                if len(neg_pairs) > neg_size * len(label):
                    break
                else:
                    neg_pairs.append([pair[0], pair[1], -1, 1])
                # first two cols are node ids, the third col is the label, the last col is train or test
            else:
                neg_pairs.append([pair[0], pair[1], -1, 0])
            valid_pair_num += 1
            single_valid_pair += 1
            neg_pair_num += 1
        pos_pairs = []
        for l in label:
            if len(l) == 1:
                continue
            type1, type2 = graph.nodes[l[0]].attributes['cell'], graph.nodes[l[1]].attributes['cell']
            poten1, poten2 = graph.nodes[l[0]].attributes['potential'], graph.nodes[l[1]].attributes['potential']
            if (not type_rule2(type1, type2)) or poten1 != poten2:
                continue
            w1, l1 = float(graph.nodes[l[0]].attributes['w']) / int(graph.nodes[l[0]].attributes['nf']), float(
                graph.nodes[l[0]].attributes['l'])
            w2, l2 = float(graph.nodes[l[1]].attributes['w']) / int(graph.nodes[l[1]].attributes['nf']), float(
                graph.nodes[l[1]].attributes['l'])
            if w1 != w2 or l1 != l2:
                continue
            if train:
                pos_pairs.append([l[0] + num_nodes, l[1] + num_nodes, 1, 1])
                # pos_pairs.append([l[0] + num_nodes, l[1] + num_nodes, 1, 1])
                # valid_pair_num += 1
            else:
                pos_pairs.append([l[0] + num_nodes, l[1] + num_nodes, 1, 0])
            valid_pair_num += 1
            single_valid_pair += 1
        all_pairs += pos_pairs + neg_pairs
        num_nodes += len(graph.nodes)
        print("{} valid pair:{}".format(dataX[i]['subckts'][0].name, single_valid_pair))

        # add edges
        for nets in graph.nets:
            for i in range(len(nets.pins)):
                if graph.pins[nets.pins[i]].attributes['type'] in ['substrate', 'hbeta']:  # 第四个端口不参与相连
                    continue
                for j in range(i + 1, len(nets.pins)):
                    if graph.pins[nets.pins[j]].attributes['type'] in ['substrate', 'hbeta']:
                        continue
                    if i != j:
                        device_id1, device_id2 = graph.pins[nets.pins[i]].node_id, graph.pins[nets.pins[j]].node_id
                        if device_id1 != device_id2:
                            pin_type1 = graph.pins[nets.pins[i]].attributes['type']
                            pin_type2 = graph.pins[nets.pins[j]].attributes['type']
                            # if (pin_filter2(pin_type1)) not in pin_con_type:
                            #     pin_con_type.append(pin_filter2(pin_type1))
                            # if (pin_filter2(pin_type2)) not in pin_con_type:
                            #     pin_con_type.append(pin_filter2(pin_type2))
                            device_tu1 = (
                                device_id1 + num_nodes - len(graph.nodes),
                                device_id2 + num_nodes - len(graph.nodes))
                            if edge_dic.__contains__(device_tu1):
                                edge_dic[device_tu1].append(pin_filter2(pin_type1))
                            else:
                                new_list = [pin_filter2(pin_type1)]
                                edge_dic[device_tu1] = new_list
                            device_tu2 = (
                                device_id2 + num_nodes - len(graph.nodes),
                                device_id1 + num_nodes - len(graph.nodes))
                            if edge_dic.__contains__(device_tu2):
                                edge_dic[device_tu2].append(pin_filter2(pin_type2))
                            else:
                                new_list = [pin_filter2(pin_type2)]
                                edge_dic[device_tu2] = new_list
                            if graph.nodes[device_id1].attributes['cell'] in passive_types and \
                                    graph.nodes[device_id2].attributes['cell'] in passive_types:
                                G.add_edge(device_id1 + num_nodes - len(graph.nodes),
                                           device_id2 + num_nodes - len(graph.nodes), weight=0)
                                G.add_edge(device_id2 + num_nodes - len(graph.nodes),
                                           device_id1 + num_nodes - len(graph.nodes), weight=0)
                            elif graph.nodes[device_id1].attributes['cell'] in passive_types or \
                                    graph.nodes[device_id2].attributes['cell'] in passive_types:
                                G.add_edge(device_id1 + num_nodes - len(graph.nodes),
                                           device_id2 + num_nodes - len(graph.nodes), weight=0.5)
                                G.add_edge(device_id2 + num_nodes - len(graph.nodes),
                                           device_id1 + num_nodes - len(graph.nodes), weight=0.5)
                            else:
                                G.add_edge(device_id1 + num_nodes - len(graph.nodes),
                                           device_id2 + num_nodes - len(graph.nodes), weight=1)
                                G.add_edge(device_id2 + num_nodes - len(graph.nodes),
                                           device_id1 + num_nodes - len(graph.nodes), weight=1)

        snode = []
        for g in graph.nodes:
            if ground_name_filter(g.attributes['name']) == 1:
                snode.append(g.id + num_nodes - len(graph.nodes))
                break
        for g in graph.nodes:
            if power_name_filter(g.attributes['name']) == 1:
                snode.append(g.id + num_nodes - len(graph.nodes))
                break

        node_weight = get_nodes_weights(G, snode, num_nodes - len(graph.nodes), num_nodes)
        node_weights.extend(node_weight)
        for num, g in enumerate(graph.nodes):
            G.nodes[g.id + num_nodes - len(graph.nodes)]['weights'] = node_weight[num]
    # convert node feats to one-hot
    node_size_feats_wn = noramlization(node_size_feats_w)
    node_size_feats_ln = noramlization(node_size_feats_l)
    for i in range(len(node_size_feats_ln)):
        node_size_feats.append(np.array([node_size_feats_wn[i], node_size_feats_ln[i]]))
    all_type = {'IO': 0, 'nmos': 1, 'pmos': 2, 'cap': 3, 'diode': 4, 'npn': 5, 'pnp': 6, 'res': 7, 'inductance': 8}
    # all_type = {'IO': 0, 'nmos': 1, 'pmos': 2, 'passive': 3, 'diode': 4, 'npn': 5, 'pnp': 6}
    print(all_type)
    num_types = len(all_type)
    node_feat = []
    for x in node_type:
        node_feat.append(convert(all_type[x], num_types))

    node_gat = []
    # for gnet in G.nodes:
    #     if G.nodes[gnet]['type'] != 'IO' and G.nodes[gnet]['nets'][-1] == 1:
    #         node_gat.append(1)
    #     else:
    #         node_gat.append(0)
    for gnet in G.nodes:
        if G.nodes[gnet]['device'] in mosfet_types and G.nodes[gnet]['nets'][-1] == 1:
            node_gat.append([0, 0, 0, 1])
        elif G.nodes[gnet]['device'] in mosfet_types and G.nodes[gnet]['nets'][-1] == 0:
            node_gat.append([0, 0, 1, 0])
        elif G.nodes[gnet]['device'] in mosfet_types and G.nodes[gnet]['nets'][-1] == -1:
            node_gat.append([0, 1, 0, 0])
        else:
            node_gat.append([1, 0, 0, 0])

    node_feats = np.array(
        [np.hstack((np.array(node_feat[t]), np.array(node_gat[t]), node_size_feats[t])) for t in
         range(len(node_feat))])
    print(node_feats.shape)

    # convert edge feats to one-hot
    edge_dic = dict(sorted(edge_dic.items(), key=operator.itemgetter(0)))  # sorted

    # num_types = len(pin_con_type)
    edge_feat = []
    for x in edge_dic:
        edge_feat.append(convert_list(edge_dic[x], 5))
    edge_feats = np.array([(np.array(edge_feat[t])) for t in range(len(edge_feat))])
    print(edge_feats.shape)

    print("number of nodes:{}".format(len(G.nodes)))
    print("number of edges:{}".format(len(G.edges)))
    print("number of valid_pair:{}".format(valid_pair_num))
    print("number of neg_pair:{}".format(neg_pair_num))

    # save all files
    np.save(save_dir + "/" + "node_feats.npy", node_feats)
    np.save(save_dir + "/" + "edge_feats.npy", edge_feats)
    nx.write_gpickle(G, save_dir + "/" + 'graph.pkl')
    with open(save_dir + "/" + "test_pair_name.json", 'w') as file:
        json.dump(my_test_name, file)
    all_pairs = sorted(all_pairs, key=lambda x: x[0])
    with open(save_dir + "/" + "labels.txt", "w") as ff:
        for pair in all_pairs:
            ff.write((str(pair[0]) + " " + str(pair[1]) + " " + str(pair[2]) + " " + str(pair[3]) + "\n"))


if __name__ == '__main__':
    read_file = " ../my_readgraph/dataXY_file.txt"
    save_file = " ../my_readgraph"
    read_graph(read_file,
               save_file)
