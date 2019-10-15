//
//  DynamicProgramming.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/14.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_DP {
    
    // MARK: -  leetcode 718. Maximum Length of Repeated Subarray
    
    func findLength(_ A: [Int], _ B: [Int]) -> Int {
        var maxLength = 0
        var dp: [[Int]] = [[Int]](repeating: [Int](repeating: 0, count: B.count), count: A.count)
        
        for i in 0..<A.count {
            for j in 0..<B.count {
                if A[i] == B[j] {
                    if i - 1 >= 0 && j - 1 >= 0 {
                        dp[i][j] = dp[i-1][j-1]+1
                    } else {
                        dp[i][j] = 1
                    }
                    maxLength = max(maxLength, dp[i][j])
                } else {
                    dp[i][j] = 0
                }
            }
        }
        return maxLength
    }
}
