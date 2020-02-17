//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation


class MyQueue {
    private var inStack = MyStack()
    private var outStack = MyStack()

    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        inStack.push(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        if outStack.empty() {
            while inStack.empty() {
                outStack.push(inStack.pop())
            }
        }
        return outStack.pop()
    }
    
    /** Get the front element. */
    func peek() -> Int {
        return outStack.top()
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        return inStack.empty() && outStack.empty()
    }
}

class MyStack {
    
    private var list = [Int]()

    /** Initialize your data structure here. */
    init() {
        
    }
    
    /** Push element x onto stack. */
    func push(_ x: Int) {
        list.append(x)
    }
    
    /** Removes the element on top of the stack and returns that element. */
    func pop() -> Int {
        return list.removeLast()
    }
    
    /** Get the top element. */
    func top() -> Int {
        return list.last ?? 0
    }
    
    /** Returns whether the stack is empty. */
    func empty() -> Bool {
        return list.isEmpty
    }
    
    func count() -> Int {
        return list.count
    }
}

func check() {
    let year = 2099
    let month = 12
    let day = 31
    
    for y in 2020...2099 {
        for m in 1...month {
            for d in 1...day {
                let s = "\(y)" + (m > 9 ? "\(m)" : "0\(m)") + (d > 9 ? "\(d)" : "0\(d)")
                var ss = s.map {return $0 }
                // 2020 0202
                var low = 0
                var high = ss.count-1
                while low < high {
                    if ss[low] == ss[high] {
                        low += 1
                        high -= 1
                    } else {
                        break
                    }
                }
                if low > high {
                    ss.insert(Character("-"), at: 4)
                    print(String(ss))
                }
            }
        }
    }
}


check()



















let t1: TreeNode? = TreeNode(1)
let t2: TreeNode? = TreeNode(2)
let t3: TreeNode? = TreeNode(3)
let t4: TreeNode? = TreeNode(4)
let t5: TreeNode? = TreeNode(5)
let t6: TreeNode? = TreeNode(6)
let t7: TreeNode? = TreeNode(7)
let t8: TreeNode? = TreeNode(8)
let t9: TreeNode? = TreeNode(9)
let t10: TreeNode? = TreeNode(10)
let t11: TreeNode? = TreeNode(11)
let t12: TreeNode? = TreeNode(12)
let t13: TreeNode? = TreeNode(13)
let t14: TreeNode? = TreeNode(14)
let t15: TreeNode? = TreeNode(15)


t1?.left = t2
t1?.right = t3
t2?.left = t4
t2?.right = t5
t3?.left = t6
t3?.right = t7
t4?.left = t8
t4?.right = t9
t5?.left = t10
t5?.right = t11
t6?.left = t12
t6?.right = t13
t7?.left = t14
t7?.right = t15




















