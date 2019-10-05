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

struct Leetcode_Stack {
    // MARK: - leetcode 20

    class Stack<T> {
        private var array: [T]
        
        var isEmpty: Bool {
            return array.count == 0
        }
        
        var topElement: T? {
            return array.last
        }
        
        init() {
            array = [T]()
        }
        
        func push(element: T) {
            array.append(element)
        }
        
        func pop() -> T {
            return array.removeLast()
        }
    }


    func isValid(_ s: String) -> Bool {
        if s.count == 0 {
            return true
        }
        
        let map: [Character: Character] = ["{": "}", "(": ")", "[": "]"]
        let keys: [Character] = ["{", "[", "("]
        
        let stack = Stack<Character>()
        let invalid = Stack<Character>()
        for c in s {
            if keys.contains(c) {
                stack.push(element: c)
            } else {
                if let top = stack.topElement, let v = map[top], v == c {
                    _ = stack.pop()
                } else {
                    invalid.push(element: c)
                }
            }
        }
        
        return stack.isEmpty && invalid.isEmpty
    }

}
