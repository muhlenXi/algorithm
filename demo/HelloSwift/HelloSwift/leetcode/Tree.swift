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
    // MARK: - leetcode 965
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
