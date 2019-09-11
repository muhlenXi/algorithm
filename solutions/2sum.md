#### 给定问题

给一个整型数组和目标值，判断数组中是否有两个数字之和等于目标值。

- 是否包含
- 返回下标

#### 解决方法

```swift

/// 是否包含这两个元素
func twoSum(array: [Int], target: Int) -> Bool {
    var set = Set<Int>()
    for element in array {
        if set.contains(target-element) {
            return true
        } else {
            set.insert(element)
        }
    }
    return false
}

/// 返回包含元素的下标
func twoSumIndex(array: [Int], target: Int) -> (Int, Int)? {
    var dictionary = [Int: Int]()
    for (index2, element) in array.enumerated() {
        if let index1 = dictionary[target-element] {
            return (index1, index2)
        } else {
            dictionary[element] = index2
        }
    }
    return nil
}


let list = [1, 2, 3, 4, 5, 6, 7, 8]
print(twoSum(array: list, target: 14))
print(twoSumIndex(array: list, target: 14))
```


