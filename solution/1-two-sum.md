# 1. two sum


<https://leetcode-cn.com/problems/two-sum/>

### Solution

`Swift`

```swift
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]()
    for (index, element) in nums.enumerated() {
        if let pre = map[target-element] {
            return [pre, index]
        } else {
            map[element] = index
        }
    }
    
    return [Int]()
}
```

`Python`

```python
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
```

### Tip

- 使用哈希表对遍历过的元素进行缓存。
