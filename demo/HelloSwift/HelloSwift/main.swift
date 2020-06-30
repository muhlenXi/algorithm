//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// 1 2 3 4 5

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
    
    private var stack1 = CStack()
    private var stack2 = CStack()
    
    init() {}
    
    func appendTail(_ val: Int) {
        stack1.push(val)
    }
    
    func deleteHead() -> Int {
        if stack2.isEmpty() {
            if stack1.isEmpty() {
                return -1
            } else {
                while !stack1.isEmpty() {
                    stack2.push(stack1.pop())
                }
                return stack2.pop()
            }
        } else {
            return stack2.pop()
        }
    }
}

let cqueue = CQueue()
cqueue.appendTail(3)
cqueue.appendTail(2)
print(cqueue.deleteHead())
cqueue.appendTail(5)
print(cqueue.deleteHead())
print(cqueue.deleteHead())





