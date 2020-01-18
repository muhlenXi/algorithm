//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// 887
func superEggDrop(_ K: Int, _ N: Int) -> Int {
    var memo = [String: Int]()
    return dp(K, N, &memo)
}

// k 个鸡蛋n层楼最坏尝试次数
func dp(_ k: Int, _ n: Int, _ memo: inout [String: Int]) -> Int{
    if k == 1 {
        return n
    }
    if n == 0 {
        return 0
    }
    
    let key = "\(k)-\(n)"
    if let val = memo[key] {
        return val
    }
    
    var num = Int.max
//    for i in 1..<n+1 {
//        let maxVal = max(dp(k, n-i, &memo), dp(k-1, i-1, &memo)) + 1
//        num = min(num, maxVal)
//    }
    
    var low = 1
    var high = n
    while low <= high {
        let mid = (low + high)/2
        let broken = dp(k-1, mid-1, &memo)  // 碎
        let notBroken = dp(k, n-mid, &memo)  // 没碎
        if broken > notBroken {
            high = mid-1
            num = min(num, broken+1)
        } else {
            low = mid + 1
            num = min(num, notBroken+1)
        }
    }
    
    memo[key] = num
    return num
}



let k = 3
let n = 14
print(superEggDrop(k, n))































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




















