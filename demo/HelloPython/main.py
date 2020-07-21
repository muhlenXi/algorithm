from typing import List
import collections

class TreeNode:
    def __init__(self, val = 0, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    # 95
    def generateTrees(self, n: int) -> List[TreeNode]:
        if n <= 0:
            return []
        return self.generate(1, n)


    def generate(self, start: int, end: int) -> List[TreeNode]:
        if start > end:
            return [None]
        list = []
        for i in range(start, end+1):
            lefts = self.generate(start, i - 1)
            rights = self.generate(i + 1, end)
            for left in lefts:
                for right in rights:
                    node = TreeNode(i)
                    node.left = left
                    node.right = right
                    list.append(node)

        return list



n = 3
solution = Solution()
print(solution.generateTrees(n))