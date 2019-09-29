import math
def fixFile(file_path):
    with open(file_path,"r") as f:
        graph = []
        for line in f:
            a = line.split()
            b = []
            for value in a:
                b.append(float(value))
            graph.append((b[0], b[1:]))
    f.close()
    return graph

def distance(a, b):
    return math.sqrt((b[0]-a[0])**2 + (b[1]-a[1])**2)

def writeGraph(graph):
    structure = []
    for node1 in graph:
        vector = []
        for node2 in graph:
            if (node1 != node2):
                vector.append(distance(node1[1], node2[1]))
        structure.append([node1[0],vector])
    for i in structure:
        print(i,'\n')

def main():
    writeGraph(fixFile("../data/burma14.tsp"))
     

main()
