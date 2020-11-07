53-II

```swift
func missingNumber(_ nums: [Int]) -> Int {
    // 统计
    var counts = Array(repeating: 0, count: nums.count+1)
    for num in nums {
        counts[num] += 1
    }
    // 遍历
    for (index, repeats) in counts.enumerated() {
        if repeats == 0 {
            return index
        }
    }
    
    return 0
}
```