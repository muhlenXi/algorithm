from typing import List

class TreeNode:
    def __init__(self, x):
        self.val = x
        self.left = None
        self.right = None

class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        if len(nums1) == 0 or len(nums2) == 0:
            return []

        n1 = sorted(nums1)
        n2 = sorted(nums2)
        i1 = 0
        i2 = 0
        common = []
        while i1 < len(n1) and i2 < len(n2):
            if n1[i1] == n2[i2]:
                common.append(n1[i1])
                i1 += 1
                i2 += 1
            elif n1[i1] > n2[i2]:
                i2 += 1
            else:
                i1 += 1
        return common









solution = Solution()
list1 = [1, 2, 2, 1, 5, 4]
list2 = [4, 5]
print(solution.intersect(list1, list2))












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
