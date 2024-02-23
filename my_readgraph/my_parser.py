import pickle
from util.netlist import *
import re

p_types = ['pfet', 'pfet_lvt', 'pmos', 'pmos2v_mac', 'pmos50_ckt', 'pch_5_mac', 'pch_5', 'pch_mac', 'hvtpfet',
           'lvtpfet']
n_types = ['nfet', 'nfet_lvt', 'nmos', 'nmos2v_mac', 'nmos50_ckt', 'nch_5_mac', 'nch_5', 'nch_mac', 'hvtnfet',
           'lvtnfet']
npn_types = ['npnhbeta1a36_mis_ckt']  # npn
pnp_types = ['pnp2_rpo_mis']  # pnp
res_types = ['rpposab', 'resnwsti_pure5v', 'rppolyhri3d3k', 'rppolyhri1k_dis', 'rnpo1rpo_dis', 'res']  # res
cap_types = ['mimcap_2p0_sin', 'cap']  # cap
diode_types = ['diode']  # diode
inductance_types = []


def read_netlist(filename):
    subckts = []
    subckt_flag = False
    potential = [[]]
    with open(filename, "r") as f:
        for line in f:
            potential_flag = False
            line = re.sub(r"[\(\)]", "", line)
            line = line.strip()  # 去除空格
            if not line:
                continue
            tokens = line.split()
            if line.startswith("*"):
                continue
            elif line.startswith(".subckt") or line.startswith(".SUBCKT"):
                tmpckt = SpiceSubckt()
                tmpckt.name = tokens[1]
                tmpckt.pins = tokens[2:]

                # select power pins as nodes
                # tmpckt.pins = list(set(tmpckt.pins).intersection(set(power_types)))
                subckts.append(tmpckt)
                subckt_flag = True
            elif line.startswith(".ends") or line.startswith(".ENDS"):
                subckt_flag = False
            else:
                if subckt_flag:
                    entry = SpiceEntry()
                    entry.name = tokens[0]
                    entry.attributes['w'] = '1.0e-6'
                    entry.attributes['l'] = '1.0e-6'
                    entry.attributes['nf'] = '1'
                    for i in range(len(tokens) - 1, 0, -1):
                        token = tokens[i]
                        if '=' in token:
                            potential_flag = True
                            a_eq_b = token.split('=')
                            assert len(a_eq_b) == 2
                            if a_eq_b[0] == 'w' or a_eq_b[0] == 'wr' or a_eq_b[0] == 'wt':
                                if a_eq_b[1][0] == 'w':
                                    entry.attributes['w'] = str((float(a_eq_b[1][1:]) + 1)) + 'e' + '-6'
                                elif a_eq_b[1][-1] == 'u':
                                    entry.attributes['w'] = a_eq_b[1][0:-1] + 'e-6'
                                elif a_eq_b[1][-1] == 'n':
                                    entry.attributes['w'] = a_eq_b[1][0:-1] + 'e-9'
                                else:
                                    entry.attributes['w'] = a_eq_b[1]
                            elif a_eq_b[0] == 'l' or a_eq_b[0] == 'lr' or a_eq_b[0] == 'lt':
                                if a_eq_b[1][0] == 'l':
                                    entry.attributes['l'] = str((float(a_eq_b[1][1:]) + 1)) + 'e' + '-6'
                                elif a_eq_b[1][-1] == 'u':
                                    entry.attributes['l'] = a_eq_b[1][0:-1] + 'e-6'
                                elif a_eq_b[1][-1] == 'n':
                                    entry.attributes['l'] = a_eq_b[1][0:-1] + 'e-9'
                                else:
                                    entry.attributes['l'] = a_eq_b[1]
                            elif a_eq_b[0] == 'mf' or a_eq_b[0] == 'nf':
                                entry.attributes['nf'] = a_eq_b[1]
                        else:
                            entry.cell = tokens[i]  # nmos, pmos, ...
                            temp_pin = tokens[1:i]
                            if len(temp_pin) > 4 and potential_flag:  # 3-well
                                entry.pins = temp_pin[:4]
                                index = next((i for i, sublist in enumerate(potential) if sublist == [temp_pin[4:]]),
                                             None)
                                if index is None:
                                    potential.append([temp_pin[4:]])
                                    entry.attributes['potential'] = len(potential) - 1
                                else:
                                    entry.attributes['potential'] = index
                            else:
                                entry.pins = tokens[1:i]
                                entry.attributes['potential'] = 0
                            # print(entry.attributes['potential'])
                            break
                    subckts[-1].entries.append(entry)
                else:
                    assert 0, "not in a subckt: %s" % line

                pass

    return subckts


def read_symfile(filename):
    subckt = ""
    symmetry_map = {}

    with open(filename, "r") as f:
        for line in f:
            line = line.strip()
            if not line:
                continue
            tokens = line.split()
            if len(tokens) == 1 and not tokens[0].startswith("x"):
                subckt = tokens[0]
                symmetry_map[subckt] = []
            else:
                symmetry_map[subckt].append(tokens)

    return symmetry_map


def read_symattr(subckts):
    # parse symmetry group
    symmetry_map = {}

    for subckt in subckts:
        symmetry_map[subckt.name] = []
        for i in range(len(subckt.entries)):
            if "sg" in subckt.entries[i].attributes.keys():
                for j in range(i + 1, len(subckt.entries)):
                    if "sg" not in subckt.entries[j].attributes.keys():
                        continue
                    if subckt.entries[i].attributes["sg"] == subckt.entries[j].attributes["sg"]:
                        symmetry_map[subckt.name].append([subckt.entries[i].name, subckt.entries[j].name])

    return symmetry_map


def print_graph_subckt(subckt, graph):
    content = ".subckt " + subckt.name
    for pin in subckt.pins:
        content += " " + pin
    content += "\n"
    for tmpnode in graph.nodes:
        if tmpnode.attributes["cell"] != "IO":
            content += tmpnode.attributes["name"]
            for pin in tmpnode.pins:
                assert graph.pins[pin].node_id == tmpnode.id
                content += " " + graph.nets[graph.pins[pin].net_id].attributes["name"]
            content += " " + tmpnode.attributes["cell"]
            for key, value in tmpnode.attributes.items():
                if key not in ["name", "cell"]:
                    content += " %s=%s" % (key, value)
            content += "\n"
    content += ".ends " + subckt.name
    print(content)


def subckts2graph(subckts, root_hint):  # subckts
    hierarchy_graph = nx.DiGraph()
    subckts_map = {}
    subckts2nodes_map = {}

    for subckt in subckts:
        subckts_map[subckt.name] = subckt  # subckt
        hierarchy_graph.add_node(subckt.name)
        subckts2nodes_map[subckt.name] = []

    for subckt in subckts:
        for entry in subckt.entries:
            if entry.cell in subckts_map:
                hierarchy_graph.add_edge(subckt.name, entry.cell)

    roots = []
    for n, d in hierarchy_graph.in_degree():  # d in
        if d == 0:
            roots.append(n)
    print("roots", roots)

    graph = SpiceGraph()

    def build_flat(subckt, context, context_nets):
        local_nets = {}
        for entry in subckt.entries:
            for pin in entry.pins:
                if pin not in subckt.pins:
                    # assert pin not in context_nets, "%s not in %s failed" % (pin, str(context_nets.keys()))
                    if pin not in local_nets:
                        tmpnet = SpiceNet()
                        tmpnet.id = len(graph.nets)
                        tmpnet.attributes["name"] = context + pin
                        graph.nets.append(tmpnet)
                        local_nets[pin] = tmpnet
        print("local nets", local_nets.keys())

        def entry_pins(entry, pin):
            if len(entry.pins) == 4 and (entry.cell in p_types or entry.cell in n_types):  # MOS
                if i == 0:
                    pin.attributes["type"] = "drain"
                elif i == 1:
                    pin.attributes["type"] = "gate"
                elif i == 2:
                    pin.attributes["type"] = "source"
                elif i == 3:
                    pin.attributes["type"] = "substrate"
                else:
                    assert 0, "unknown %d" % i
            elif entry.cell in res_types or entry.cell in cap_types:
                if i == 0:
                    pin.attributes["type"] = "passive"
                elif i == 1:
                    pin.attributes["type"] = "passive"
                elif i == 2:
                    pin.attributes["type"] = "substrate"
                else:
                    assert 0, "unknown %d" % i
            elif entry.cell in diode_types:
                if i == 0:
                    pin.attributes["type"] = "N+"
                elif i == 1:
                    pin.attributes["type"] = "N-"
                else:
                    assert 0, "unknown %d" % i
            # bipolar junction transistor
            elif entry.cell in npn_types or entry.cell in pnp_types:
                if i == 0:
                    pin.attributes["type"] = "c"
                elif i == 1:
                    pin.attributes["type"] = "b"
                elif i == 2:
                    pin.attributes["type"] = "e"
                elif i == 3:
                    pin.attributes["type"] = "hbeta"
                else:
                    assert 0, "unknown %d" % i
            else:
                # pdb.set_trace()
                assert 0, "unknown device: %s" % entry.cell

        for entry in subckt.entries:
            if entry.cell not in subckts_map:
                tmpnode = SpiceNode()
                tmpnode.id = len(graph.nodes)
                tmpnode.attributes["name"] = context + entry.name
                tmpnode.attributes["cell"] = entry.cell
                tmpnode.attributes.update(entry.attributes)
                graph.nodes.append(tmpnode)
                for i, pin in enumerate(entry.pins):
                    if pin in subckt.pins:
                        # assert pin in context_nets, "%s in %s failed" % (pin, str(context_nets.keys()))
                        tmppin = SpicePin()
                        tmppin.id = len(graph.pins)
                        tmppin.node_id = tmpnode.id
                        tmppin.net_id = context_nets[pin].id
                        entry_pins(entry, tmppin)
                        tmpnode.pins.append(tmppin.id)
                        context_nets[pin].pins.append(tmppin.id)
                        graph.pins.append(tmppin)
                    # local nets not power
                    else:
                        # assert pin not in context_nets, "%s not in %s failed" % (pin, str(context_nets.keys()))
                        tmppin = SpicePin()
                        tmppin.id = len(graph.pins)
                        tmppin.node_id = tmpnode.id
                        tmppin.net_id = local_nets[pin].id
                        entry_pins(entry, tmppin)
                        tmpnode.pins.append(tmppin.id)
                        local_nets[pin].pins.append(tmppin.id)
                        graph.pins.append(tmppin)
            else:
                subckt_sub = subckts_map[entry.cell]
                context_sub = context + entry.name + "/"
                context_nets_sub = {}
                for i in range(len(entry.pins)):
                    pin = entry.pins[i]
                    if pin in subckt.pins:
                        # assert pin in context_nets, "%s in %s failed" % (pin, str(context_nets.keys()))
                        context_nets_sub[subckt_sub.pins[i]] = context_nets[pin]
                    else:
                        # assert pin not in context_nets, "%s not in %s failed" % (pin, str(context_nets.keys()))
                        context_nets_sub[subckt_sub.pins[i]] = local_nets[pin]
                build_flat(subckt_sub, context_sub, context_nets_sub)

    if root_hint in roots:
        roots = [root_hint]
    assert len(roots) == 1
    for root in roots:
        subckt = subckts_map[root]
        context_nets = {}
        for pin in subckt.pins:
            tmpnode = SpiceNode()
            tmppin = SpicePin()
            tmpnet = SpiceNet()
            tmpnode.id = len(graph.nodes)
            tmpnet.id = len(graph.nets)
            tmppin.id = len(graph.pins)

            tmpnode.attributes["cell"] = "IO"
            tmpnode.attributes["name"] = pin
            tmpnode.pins.append(tmppin.id)

            tmpnet.attributes["name"] = pin
            tmpnet.pins.append(tmppin.id)

            tmppin.node_id = tmpnode.id
            tmppin.net_id = tmpnet.id
            tmppin.attributes["type"] = "IO"

            graph.nodes.append(tmpnode)
            graph.nets.append(tmpnet)
            graph.pins.append(tmppin)
            context_nets[pin] = tmpnet

        build_flat(subckt, subckt.name + "/", context_nets)
        print("recovered")
        # print_graph_subckt(subckt, graph)

    return graph, roots


def parse_all(filedir, save_dir):
    dataX = []
    dataY = []

    netlists = glob.glob(os.path.join(filedir, "*.sp"))
    netlists = sorted(netlists)
    symfiles = glob.glob(os.path.join(filedir, "*.txt"))

    for netlist in netlists:
        print("read netlist file: %s" % netlist)
        root_hint = netlist.split('/')[-1].split('.')[0]
        subckts = read_netlist(netlist)

        # parse symfile
        symfile = netlist.replace(".sp", ".txt") if netlist.replace(".sp",
                                                                    ".txt") in symfiles else None  # symfile

        if symfile:
            print("read symmetry file: %s" % symfile)
            symmetry_map = read_symfile(symfile)
        else:
            print("parse symmetry info from attributes")
            symmetry_map = read_symattr(subckts)
            pass

        # spice graph
        graph, roots = subckts2graph(subckts, root_hint)

        symmetry_id_array = []

        def add_symmetry_pairs(subckt_inst, pairs):
            for pair in pairs:
                skip_flag = False
                if len(pair) == 1:
                    for subckt in subckts:
                        for entry in subckt.entries:
                            if entry.name == pair[0] and entry.cell in symmetry_map:
                                skip_flag = True
                                break
                        if skip_flag:
                            break
                if skip_flag:
                    continue

                names = pair  # (M1,M2)...
                node_id_pair = []
                groups = {}
                for name in names:
                    groups[name] = []
                for tmpnode in graph.nodes:
                    for name in names:  # M1 M2...
                        if subckt_inst in roots:
                            if root_hint + "/" + name == tmpnode.attributes["name"]:
                                groups[name].append(tmpnode.id)  # group[M1]:1 group[M2]:2
                        elif subckt_inst not in roots:
                            if root_hint + "/" + subckt_inst + "/" + name == tmpnode.attributes["name"]:
                                groups[name].append(tmpnode.id)  # group[M1]:1 group[M2]:2
                for key, value in groups.items():
                    assert len(value) == 1
                    node_id_pair.append(value[0])
                symmetry_id_array.append(node_id_pair)  # M1,M2) to [1,2]

        for subckt_sym, pairs in symmetry_map.items():
            if subckt_sym in roots:  # roots is the topckt
                add_symmetry_pairs(subckt_sym, pairs)
            else:
                for subckt in subckts:
                    for entry in subckt.entries:
                        if entry.cell == subckt_sym:
                            add_symmetry_pairs(entry.name, pairs)

        print("symmetry_map")
        print(symmetry_map)
        print("symmetry_id_array")
        print(symmetry_id_array)

        content = ""
        for pair in symmetry_id_array:
            content += "("
            for node_id in pair:
                if isinstance(node_id, tuple):
                    content += " { "
                    for nid in node_id:
                        content += " " + graph.nodes[nid].attributes["name"]
                    content += " } "
                else:
                    content += " " + graph.nodes[node_id].attributes["name"]
            content += " ) "
        print(content)

        dataX.append({"subckts": subckts, "graph": graph})
        dataY.append(symmetry_id_array)
    with open(save_dir + "/" + "dataXY_file.txt", 'wb') as f:
        pickle.dump((dataX, dataY), f)
    # return dataX, dataY
    # dataX:[{'subckts':subgraph1,'graph':graph1},{'subckts':subgraph2,'graph':graph2},.....]
    # dataY:[[labels1],[labels2],.....]


if __name__ == '__main__':
    path_read_SPICE = " "
    path_save_netlist = " "
    parse_all(path_read_SPICE,
              path_save_netlist)
