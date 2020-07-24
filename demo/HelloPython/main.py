from typing import List
import collections

class TreeNode:
    def __init__(self, val = 0, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def divisorGame(self, N: int) -> bool:
        return N % 2 == 0

    def test(self):
        s = "123"
        print(s[1:])




n = 4
solution = Solution()
print(solution.divisorGame(n))

