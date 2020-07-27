from typing import List
import collections

class TreeNode:
    def __init__(self, val = 0, left = None, right = None):
        self.val = val
        self.left = left
        self.right = right

class Solution:
    def stoneGame(self, piles: [int]) -> bool:
        table = [[(0, 0) for i in range(len(piles))] for j in range(len(piles))]
        for i in range(len(piles)):
            table[i][i] = (piles[i], 0)

        for l in range(1, len(piles)):
            for i in range(0, len(piles)-l):
                j = i + l
                left = piles[i] + table[i+1][j][1]
                right = piles[j] + table[i][j-1][1]
                if left > right:
                    table[i][j] = (left, table[i+1][j][0])
                else:
                    table[i][j] = (right, table[i][j-1][0])

        res = table[0][len(piles)-1]
        return res[0] > res[1]

    def test(self, nums: List[List[int]]):
        for j in range(0, len(nums)):
            for i in range(0, len(nums)-j):
                print(nums[i][i+j])
            break

nums = [[1, 2, 3, 4, 5],
        [6, 7, 8, 9, 0],
        [1, 2, 3, 4, 5],
        [6, 7, 8, 9, 0],
        [1, 2, 3, 4, 5]]
p = [5, 3, 4, 5]
solution = Solution()
print(solution.stoneGame(p))


