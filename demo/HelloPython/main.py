from typing import List

class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def sortedArrayToBST(self, nums: List[int]) -> TreeNode:
        if len(nums) == 0:
            return None

        nodes = []
        for num in nums:
            nodes.append(TreeNode(num))

        low = (len(nodes) - 1) / 2
        high = low + 1
        while low > 0:
            if low - 1 >= 0:
                if nodes[low].left != None:
                    nodes[low].left = nodes[low-1]





list = [-15, -10, -3, 0, 5, 9, 12]



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

print(solution.levelOrder(t1))
