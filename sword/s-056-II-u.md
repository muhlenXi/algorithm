56-II

Swift

```swift
func singleNumbers(_ nums: [Int]) -> Int {
    guard nums.count > 0 else { return 0 }
    var temp = [Int]()
    
    for num in nums.sorted() {
        if temp.isEmpty {
            temp.append(num)
            continue
        }
        
        if temp[0] == num {
            temp.append(num)
        } else {
            if temp.count == 1 {
                return temp[0]
            } else {
                temp.removeAll()
                temp.append(num)
            }
        }
    }
    return temp[0]
}
```