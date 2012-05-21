#! /usr/bin/env python

import networkx as nx

import os
import glob
import sys


import pprint
import optparse


opt = optparse.OptionParser()

opt.add_option('--directory', '-d',
            help="process directory")

options = opt.parse_args()[0]


path = options.directory
network_files = glob.glob(os.path.join(path, "*.gml"))
print network_files

pickle_dir = os.path.join(path, "cache")
if not os.path.isdir(pickle_dir):
    os.mkdir(pickle_dir)

graph_combined = nx.MultiGraph()
network_delimeter = "___" # seperate network and name in node names

for source_file in sorted(network_files):
    # Extract name of network from file path
    filename = os.path.split(source_file)[1]
    net_name = os.path.splitext(filename)[0]

    pickle_file = "{0}/{1}.pickle".format(pickle_dir, net_name)
    if (os.path.isfile(pickle_file) and
        os.stat(source_file).st_mtime < os.stat(pickle_file).st_mtime):
        # Pickle file exists, and source_file is older
        graph = nx.read_gpickle(pickle_file)
    else:
        # No pickle file, or is outdated
        graph = nx.read_gml(source_file)
        nx.write_gpickle(graph, pickle_file)

#TODO: only keep internal nodes
    network_name = graph.graph['Network']
    print network_name

    #mapping = dict( (n, nx.utils.misc.generate_unique_node()) for n in graph)
    mapping = {}
    for n, d in graph.nodes(data=True):
        if d.get("label"):
            mapping[n] = d['label'].strip()
        else:
            mapping[n] = n # for hyperedges, etc, retain the id

    nx.relabel_nodes(graph, mapping, copy=False)
    network_prefix = "%s%s" % (network_name, network_delimeter)
    graph_combined = nx.union(graph_combined, graph, rename=("", network_prefix))

#TODO: look at renaming with labels, eg geant_at, this will simplify the connection process!

pprint.pprint(sorted(graph_combined.nodes()))

#FIX "None" labels
for node, data in graph_combined.nodes(data=True):
    label = data.get("label")
    if not label:
        continue
    
    if label == "None":
        graph_combined.node[node]["label"] = ""
# and escape
    if "&" in label:
        graph_combined.node[node]["label"] = label.replace("&", "&gt;")



#pprint.pprint(graph_combined.nodes())
nx.write_graphml(graph_combined, "graph_combined.graphml")
nx.write_gml(graph_combined, "graph_combined.gml")
