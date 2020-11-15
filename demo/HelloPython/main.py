from typing import List
import collections
import sys

class TreeNode:
    def __init__(self, val = 0, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right

class ListNode:
    def __init__(self, x):
        self.val = x
        self.next = None


class Solution:
    def getIntersectionNode(self, headA: ListNode, headB: ListNode) -> ListNode:
        a, b = headA, headB

        while a != b:
            a = a.next if a.next else headB
            b = b.next if b.next else headA

        return a

    def com(self, a: int, b: int) -> int:
        c = a if a > b else b
        return c


solution = Solution()
print(solution.com(3, 5))