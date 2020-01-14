//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation


func permute(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]]()
    
    return result
}

// 885
func spiralMatrixIII(_ R: Int, _ C: Int, _ r0: Int, _ c0: Int) -> [[Int]] {
    var points = [[Int]]()
    
    var row = r0
    var column = c0
    while column < C {
        points.append([row, column])
        column += 1
    }
    row += 1
    
    
    return points
}

var R = 5
var C = 6
var r0 = 1
var c0 = 4

print(spiralMatrixIII(R, C, r0, c0))





























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




















