//
//  Stack.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/4.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// MARK: - leetcode 155
class MinStack {
    /// 数据模型
    struct StackModel {
        var value: Int
        var minimumValue: Int
    }
    
    var stack: [StackModel]!
    var isEmpty: Bool {
        return stack.count == 0
    }
    
    /** initialize your data structure here. */
    init() {
        stack = [StackModel]()
    }
    
    func push(_ x: Int) {
        if isEmpty {
            stack.append(StackModel(value: x, minimumValue: x))
        } else {
            let min = x < stack.last!.minimumValue ? x : stack.last!.minimumValue
            stack.append(StackModel(value: x, minimumValue: min))
        }
    }
    
    func pop() {
        stack.removeLast()
    }
    
    func top() -> Int {
        if isEmpty {
            return -1
        } else {
            return stack.last!.value
        }
    }
    
    func getMin() -> Int {
        if isEmpty {
            return -1
        } else {
            return stack.last!.minimumValue
        }
    }
}

// 栈数据结构
class Stack<T> {
    private var array: [T]
    
    var isEmpty: Bool {
        return array.count == 0
    }
    
    var topElement: T? {
        return array.last
    }
    
    var containers: [T] {
       return array
    }
    
    init() {
        array = [T]()
    }
    
    func push(element: T) {
        array.append(element)
    }
    
    func pop() -> T? {
        guard !isEmpty else {
            return nil
        }
        
        return array.removeLast()
    }
}
