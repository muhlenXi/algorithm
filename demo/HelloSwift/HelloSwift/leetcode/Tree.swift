//
//  Tree.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/6.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

struct Leetcode_Tree {
    // MARK: - leetcode 100
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q != nil {
            return false
        }
        if p != nil && q == nil {
            return false
        }
        
        guard let p = p, let q = q else {
            return true
        }
        
        if p.val != q.val {
            return false
        }
        
        if !isSameTree(p.left, q.left) {
            return false
        }
        
        if !isSameTree(p.right, q.right) {
            return false
        }
        
        return true
    }

    // MARK: - leetcode 404
    
    // 404
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        var output = 0
        calculateSum(node: root, isLeft: false, sum: &output)
        return output
    }

    func calculateSum(node: TreeNode?, isLeft: Bool, sum:inout Int) {
        guard let node = node else {
            return
        }
        
        if node.left == nil && node.right == nil && isLeft {
            sum = sum + node.val
        }
        
        calculateSum(node: node.left, isLeft: true, sum: &sum)
        calculateSum(node: node.right, isLeft: false, sum: &sum)
    }
    
    // MARK: - leetcode 501
    
    // 501
    func findMode(_ root: TreeNode?) -> [Int] {
        var map = [Int: Int]()
        var maxRepeats: Int = 0
        calculateRepeats(node: root, map: &map, maxRepeats: &maxRepeats)
        
        var output = [Int]()
        for (k, v) in map {
            if v == maxRepeats {
                output.append(k)
            }
        }
        return output
    }

    func calculateRepeats(node: TreeNode?, map: inout [Int: Int], maxRepeats: inout Int) {
        guard let node = node else {
            return
        }
        
        if let repeats = map[node.val] {
            map[node.val] = repeats + 1
            maxRepeats = maxRepeats > repeats+1 ? maxRepeats : repeats+1
        } else {
            map[node.val] = 1
            maxRepeats = maxRepeats > 1 ? maxRepeats : 1
        }
        
        calculateRepeats(node: node.left, map: &map, maxRepeats: &maxRepeats)
        calculateRepeats(node: node.right, map: &map, maxRepeats: &maxRepeats)
    }
    
    // MARK: - leetcode 607

    // 607
    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
        var list = [Int]()
        traversal(node: root, array: &list)
        if list.count == 2 {
            return list.first!
        }
        return -1
    }

    func traversal(node: TreeNode?, array: inout [Int]) {
        guard let node = node else {
            return
        }
        
        // a0 > a1
        if array.count < 2, !array.contains(node.val) {
            array.append(node.val)
        }
        if array.count == 2, node.val < array[0], !array.contains(node.val) {
            array[0] = node.val
        }
        if array.count == 2, array[0] < array[1] {
            array.swapAt(0, 1)
        }
        
        traversal(node: node.left, array: &array)
        traversal(node: node.right, array: &array)
    }

    
    // MARK: - leetcode 965
    
    // 965
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        guard let node = root else {
            return false
        }
        
        return isEqual(node, val: node.val)
    }

    func isEqual(_ node: TreeNode?, val: Int) -> Bool {
        guard let node = node else {
            return true
        }
        
        if node.val != val {
            return false
        }
        if !isEqual(node.left, val: val) {
            return false
        }
        if !isEqual(node.right, val: val) {
            return false
        }
        
        return true
    }
}
