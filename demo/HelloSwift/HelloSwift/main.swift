//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation


func largestTriangleArea(_ points: [[Int]]) -> Double {
    var sMax = Double(0)
    var i = 0
    while i < points.count {
        var j = i + 1
        while j < points.count {
            var z = j + 1
            while z < points.count {
                let p0 = points[i]
                let p1 = points[j]
                let p2 = points[z]
                
                // s = 1/2 * ((x1-x0)(y2-y0) - (x2-x0)(y1-y0))
                var s = abs(Double(p1[0]-p0[0])*Double(p2[1]-p0[1]) - Double(p2[0]-p0[0])*Double(p1[1]-p0[1]))
                s *= Double(0.5)

                sMax = max(s, sMax)
                z += 1
            }
            j += 1
        }
        i += 1
    }
    return sMax
}

print(largestTriangleArea([[35,-23],[-12,-48],[-34,-40],[21,-25],[-35,-44],[24,1],[16,-9],[41,4],[-36,-49],[42,-49],[-37,-20],[-35,11],[-2,-36],[18,21],[18,8],[-24,14],[-23,-11],[-8,44],[-19,-3],[0,-10],[-21,-4],[23,18],[20,11],[-42,24],[6,-19]]))
































// [1,0,48,null,null,12,49,null,null,null,null]
let t1: TreeNode? = TreeNode(1)
let t2: TreeNode? = TreeNode(0)
let t3: TreeNode? = TreeNode(48)
let t4: TreeNode? = nil
let t5: TreeNode? = nil
let t6: TreeNode? = TreeNode(12)
let t7: TreeNode? = TreeNode(49)
let t8: TreeNode? = TreeNode(8)
let t9: TreeNode? = TreeNode(9)
let t10: TreeNode? = TreeNode(10)
let t11: TreeNode? = TreeNode(11)
let t12: TreeNode? = TreeNode(12)
let t13: TreeNode? = TreeNode(13)
let t14: TreeNode? = TreeNode(14)
let t15: TreeNode? = TreeNode(15)


//t1?.left = t2
//t1?.right = t3
//t2?.left = t4
//t2?.right = t5
//t3?.left = t6
//t3?.right = t7
//t4?.left = t8
//t4?.right = t9
//t5?.left = t10
//t5?.right = t11
//t6?.left = t12
//t6?.right = t13
//t7?.left = t14
//t7?.right = t15
















