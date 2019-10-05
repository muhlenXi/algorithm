//
//  DivideAndConquer.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/4.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_DivideAndConquer {
    // MARK: - leetcode 53
    func maxSubArray(_ nums: [Int]) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        var maxSum = nums[0]
        var sum = nums[0]
        for index in 1..<nums.count {
            sum += nums[index]
            // 如果当前元素之前的累加和小于当前元素，那么最大累加和为当前元素
            if sum < nums[index] {
                sum = nums[index]
            }
            // 如果当前累加和超过最大和，则替换最大和
            if sum > maxSum {
                maxSum = sum
            }
        }
        
        return maxSum
    }
    
    // MARK: - leetcode 169
    func majorityElement(_ nums: [Int]) -> Int {
        var dict = [Int: Int]()
        for number in nums {
            if let _ = dict[number] {
                dict[number]! += 1
            } else {
                dict[number] = 1
            }
        }
        
        for (key,value) in dict {
            if value >  Int(nums.count/2) {
                return key
            }
        }
        return 0
    }
}
