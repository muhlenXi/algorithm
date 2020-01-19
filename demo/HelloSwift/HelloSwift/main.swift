//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation
// 377
func combinationSum4(_ nums: [Int], _ target: Int) -> Int {
    var dp = Array(repeating: 0, count: target+1)
    dp[0] = 1
    for t in 1...target {
        for element in nums {
            if t >= element {
                if Int.max - dp[t-element] >= dp[t] {
                    dp[t] += dp[t-element]
                }
            }
        }
    }
    return Int(dp[target])
}

func combinationSum4DFS(_ nums: [Int], _ target: Int) -> Int {
    var result = 0
    let candidate = nums.sorted()
    var tempSum = 0
    var temp = [Int]()
    backtrack(candidate, target, &temp, &tempSum, 0, &result)
    return result
}

func backtrack(_ candidates: [Int],
        _ target: Int,
        _ temp: inout [Int],
        _ tempSum: inout Int,
        _ index: Int,
        _ result: inout Int) {
    if tempSum == target {
        result += 1
        print(temp)
        return
    }
    if tempSum > target {
        return
    }
    
    for i in 0..<candidates.count {
        let ele = candidates[i]
        tempSum += ele
        temp.append(ele)
        backtrack(candidates, target, &temp, &tempSum, i, &result)
        tempSum -= ele
        temp.removeLast()
    }
}

let n = [3,33,333]
let t = 10000
print(combinationSum4(n, t))
//print(combinationSum4DFS(n, t))





























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




















