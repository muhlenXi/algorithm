from typing import List

class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def inorderTraversal(self, root: TreeNode) -> List[int]:
        if root == None:
            return []
        else:
            return self.inorderTraversal(root.left) + [root.val] + self.inorderTraversal(root.right)

    def inorderTraversal1(self, root: TreeNode) -> List[int]:
        if root == None:
            return  []

        nodes = []
        values = []
        node = root
        while node != None:
            nodes.append(node)
            node = node.left

        while len(nodes) > 0:
            node = nodes.pop()
            values.append(node.val)
            node = node.right
            while node != None:
                nodes.append(node)
                node = node.left

        return  values



solution = Solution()
t1 = TreeNode(1)
t2 = TreeNode(2)
t3 = TreeNode(3)
t4 = TreeNode(4)
t5 = TreeNode(5)
t6 = TreeNode(6)
t7 = TreeNode(7)
t1.left = t2
t1.right = t3
t2.left = t4
t2.right = t5
t3.left = t6
t3.right = t7

print(solution.inorderTraversal(t1))
print(solution.inorderTraversal1(t1))

