from typing import List
import collections

class TreeNode:
    def __init__(self, val = 0, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def isMatch1(self, s: str, p: str) -> bool:
        if not p:
            return not s
        first_match = bool(s) and p[0] in {s[0], "."}
        if len(p) >= 2 and p[1] == "*":
            return self.isMatch(s, p[2:]) or first_match and self.isMatch(s[1:], p)
        else:
            return first_match and self.isMatch(s[1:], p[1:])

    def isMatch(self, text: str, pattern: str) -> bool:
        memo = dict()
        def dp(i, j):
            if (i, j) in memo:
                return memo[(i, j)]
            if j == len(pattern):
                return i == len(text)
            first_match = i < len(text) and pattern[j] in {text[i], '.'}
            if j <= len(pattern)-2 and pattern[j+1] == '*':
                res = dp(i, j+2) or first_match and dp(i+1, j)
            else:
                res = first_match and dp(i+1, j+1)

            memo[(i, j)] = res
            return res

        return dp(0, 0)

    def test(self):
        s = "123"
        print(s[1:])



s = "ab"
p = ".*"
solution = Solution()
print(solution.isMatch(s, p))
