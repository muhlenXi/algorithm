from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        if len(nums) < 2:
            return []

        cache = {}
        for index, value in enumerate(nums):
            if target - value in cache:
                return [cache[target-value], index]
            else:
                cache[value] = index
        return []

    def twoSum1(self, nums: List[int], target: int) -> List[int]:
        if len(nums) < 2:
            return []
        for i in range(0, len(nums)-1):
            for j in range(i+1, len(nums)):
                if nums[i] + nums[j] == target:
                    return [i, j]

        return []


list = [2, 7, 1, 15]
solution = Solution()
target = 8
print(solution.twoSum1(list, target))
