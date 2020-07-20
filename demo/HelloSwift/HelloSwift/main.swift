//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// 232
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
            while inStack.empty() == false {
                outStack.push(inStack.pop())
            }
        }
        return outStack.pop()
    }
    
    /** Get the front element. */
    func peek() -> Int {
        if outStack.empty() {
            while inStack.empty() == false {
                outStack.push(inStack.pop())
            }
        }
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





