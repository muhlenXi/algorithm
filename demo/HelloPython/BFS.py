import math
import heapq

graph = {
    "A" : ["B", "C"],
    "B": ["A", "E"],
    "C": ["A", "D", "F"],
    "D": ["C", "E"],
    "E": ["B", "D", "F", "G"],
    "F": ["C", "E"],
    "G": ["E"]
}

graph1 = {
	"A" : {"B": 4, "C": 1},
	"B": {"A": 4, "E": 21},
	"C": {"A": 1, "D": 5, "F": 8},
	"D": {"C": 5, "E": 5},
	"E": {"B": 21, "D": 5, "F": 12, "G": 4},
	"F": {"C": 8, "E": 12},
	"G": {"E": 4}
}

def bfs(graph, s):
	queue = []
	seen = set()
	parent = {s: None}

	queue.append(s)
	seen.add(s)

	while len(queue) > 0:
		vertex = queue.pop(0)
		nodes = graph[vertex]

		for n in nodes:
			if n not in seen:
				queue.append(n)
				seen.add(n)
				parent[n] = vertex
		print(vertex)

	return parent

def init_distance(graph, s):
	distance = {s: 0}

	for vertex in graph:
		if vertex != s:
			distance[vertex] = math.inf

	return distance

def dijkstra(graph, s):
	pqueue = []
	heapq.heappush(pqueue, (0, s))

	seen = set()
	parent = {s: None}
	distance = init_distance(graph, s)

	while len(pqueue) > 0:
		pair = heapq.heappop(pqueue)
		dist = pair[0]
		vertex = pair[1]
		seen.add(vertex)

		nodes = graph[vertex].keys()
		for n in nodes:
			if n not in seen:
				d = dist + graph[vertex][n]
				if d < distance[n]:
					heapq.heappush(pqueue, (d, n))
					distance[n] = d
					parent[n] = vertex

	return parent, distance


parent = bfs(graph, "A")
print(parent)
#parent, distance = dijkstra(graph1, "A")
#print(parent)
#print(distance)
