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
