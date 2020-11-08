32-II

Swift

```swift
func levelOrder(_ root: TreeNode?) -> [[Int]] {
    var values = [[Int]]()
    guard let root = root else { return values }
    
    var nodes = [[TreeNode]]()
    nodes.append([root])

    while nodes.count > 0 {
        let temps = nodes.removeLast()
        
        var childs = [TreeNode]()
        var nodesValues = [Int]()
        for node in temps {
            nodesValues.append(node.val)
            if let left = node.left {
                childs.append(left)
            }
            if let right = node.right {
                childs.append(right)
            }
        }
        if !childs.isEmpty {
            nodes.append(childs)
        }
        if !nodesValues.isEmpty {
            values.append(nodesValues)
        }
    }
    
    return values
}
```