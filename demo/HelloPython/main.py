from typing import List
import collections
import sys

class TreeNode:
    def __init__(self, val = 0, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right


class Solution:
    def recoverTree(self, root: TreeNode) -> None:
        pre = None
        nodes = []
        self.recover(root, pre, nodes)
        if len(nodes) >= 2:
            nodes[0].val, nodes[len(nodes)-1].val = nodes[len(nodes)-1].val, nodes[0].val


    def recover(self, root: TreeNode, pre: TreeNode, nodes: List[TreeNode]):
        if root == None:
            return

        self.recover(root.left, pre, nodes)

        if pre != None and root.val < pre.val:
            nodes.append(pre)
            nodes.append(root)
        pre = root

        self.recover(root.right, pre, nodes)



solution = Solution()
t1 = TreeNode(1)
t2 = TreeNode(2)
t3 = TreeNode(3)
t4 = TreeNode(4)
t5 = TreeNode(5)
t6 = TreeNode(6)

t3.left = t1
t3.right = t4
t4.left = t2



print(solution.recoverTree(t3))

