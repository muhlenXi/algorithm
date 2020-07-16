from typing import List
import collections

class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def isBipartite(self, graph: List[List[int]]) -> bool:
        count = len(graph)
        UNCOLORED = 0
        RED = 1
        GREEN = 2
        color = [UNCOLORED] * count
        for i in range(count):
            if color[i] == UNCOLORED:
                q = collections.deque([i])
                color[i] = RED
                while q:
                    node = q.popleft()
                    colorNext = (GREEN if color[node] == RED else RED)
                    for neighbor in graph[node]:
                        if color[neighbor] == UNCOLORED:
                            q.append(neighbor)
                            color[neighbor] = colorNext
                        elif color[neighbor] != colorNext:
                            return False

        return True





solution = Solution()
graph = [[1, 3], [0, 2], [1, 3], [0, 2]]
print(solution.isBipartite(graph))









