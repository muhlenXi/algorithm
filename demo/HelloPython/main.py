from typing import List
import collections

class TreeNode:
    def __init__(self, val = 0, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    # 递归
    def maxDepth(self, root: TreeNode) -> int:
        if root is None:
            return 0
        left_depth = self.maxDepth(root.left)
        right_depth = self.maxDepth(root.right)
        return max(left_depth, right_depth) + 1

    # bfs
    def maxDepth1(self, root: TreeNode) -> int:
        if root is None:
            return 0

        queue = [[root]]
        depth = 1
        while len(queue) > 0:
            nodes = queue.pop()
            childs = []
            for node in nodes:
                if node.left != None:
                    childs.append(node.left)
                if node.right != None:
                    childs.append(node.right)

            if len(childs) > 0:
                queue.append(childs)
                depth += 1

        return depth

    # dfs
    def maxDepth2(self, root: TreeNode) -> int:
        if root == None:
            return 0
        if root.left == None and root.right == None:
            return 1
        paths = []
        depths = []
        self.dfs(root, paths, depths)
        return max(depths)

    def dfs(self, root: TreeNode, paths: List[int], depths: List[int]):
        if root == None:
            return
        paths.append(root.val)
        if root.left == None and root.right == None:
            depths.append(len(paths))

        self.dfs(root.left, paths, depths)
        self.dfs(root.right, paths, depths)
        paths.pop()

solution = Solution()

t1 = TreeNode(1)
t2 = TreeNode(2)
t3 = TreeNode(3)
t4 = TreeNode(4)
t5 = TreeNode(5)

t1.left = t2
t1.right = t3
t3.left = t4
t3.right = t5

print(solution.maxDepth(t1))
print(solution.maxDepth1(t1))
print(solution.maxDepth2(t1))


