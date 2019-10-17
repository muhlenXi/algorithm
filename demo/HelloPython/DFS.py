graph = {
	"A" : ["B", "C"],
	"B": ["A", "E"],
	"C": ["A", "D", "F"],
	"D": ["C", "E"],
	"E": ["B", "D", "F", "G"],
	"F": ["C", "E"],
	"G": ["E"]
}

def dfs(graph, s):
	stack = []
	seen = set()

	stack.append(s)
	seen.add(s)

	while len(stack) > 0:
		vertex = stack.pop()
		nodes = graph[vertex]
		for n in nodes:
			if n not in seen:
				stack.append(n)
				seen.add(n)
		print(vertex)

