# 9. 用两个栈实现队列


<https://leetcode-cn.com/classic/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof>

### Solution

`Swift`

```swift
class CStack {
    private var list = [Int]()
    
    init() {}
    
    func push(_ val: Int) {
        list.append(val)
    }
    
    func pop() -> Int{
        guard !self.isEmpty() else {
            return -1
        }
        return list.removeLast()
    }
    
    func isEmpty() -> Bool {
        return list.isEmpty
    }
}

class CQueue {
    
    private var inStack = CStack()
    private var outStack = CStack()
    
    init() {}
    
    func appendTail(_ val: Int) {
        inStack.push(val)
    }
    
    func deleteHead() -> Int {
        if outStack.isEmpty() {
            if inStack.isEmpty() {
                return -1
            } else {
                while ! inStack.isEmpty() {
                    outStack.push(inStack.pop())
                }
                return outStack.pop()
            }
        } else {
            return outStack.pop()
        }
    }
}
```

`Python`

```python
class CQueue:
    in_stack = list()
    out_stack = list()

    def __init__(self):
        return

    def appendTail(self, value: int) -> None:
        self.in_stack.append(value)

    def deleteHead(self) -> int:
        if self.out_stack:
            return self.out_stack.pop()
        else:
            if self.in_stack:
                while self.in_stack:
                    self.out_stack.append(self.in_stack.pop())
                return self.out_stack.pop()
            else:
                return -1
```

### Tip

- 使用两个栈来操作，in 栈用于保存队列队尾添加的元素。out 栈用于删除队列队头的元素。当 out 栈为空时，将 in 栈的所有元素 push 到 out 栈中。
