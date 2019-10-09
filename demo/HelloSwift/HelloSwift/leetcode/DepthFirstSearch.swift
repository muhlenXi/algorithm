//
//  DepthFirstSearch.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/9.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_DFS {
    // MARK: - leetcode 104

    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        let left = maxDepth(root.left)
        let right = maxDepth(root.right)
        
        return max(left, right) + 1
    }

    // MARK: - leetcode 111

    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        let left = minDepth(root.left)
        let right = minDepth(root.right)
        
        switch (left, right) {
        case (_, 0):
            return left + 1
        case (0, _):
            return right + 1
        default:
            return min(left, right) + 1
        }
    }
}
