//
//  Array.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/30.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct LeetcodeArray {
    
    // MARK: - leetcode 001
    /// 寻找目标数
    func twoSum(_ array: [Int], _ target: Int) -> [Int] {
        guard array.count > 1 else {
            return [Int]()
        }
        
        var cache: [String :Int] = [:]
        for i in 0..<array.count {
            if let index = cache["\(target-array[i])"] {
                return [index, i]
            } else {
                cache["\(array[i])"] = i
            }
        }
        
        return [Int]()
    }

    // MARK: - leetcode 167
    func twoSum1(_ numbers: [Int], _ target: Int) -> [Int] {
        guard numbers.count > 1 else {
            return [Int]()
        }
        
        var left = 0
        var right = numbers.count-1
        var sum = numbers[left] + numbers[right]
        
        if sum < target{
            return [Int]()
        }
        
        while left < right {
            sum = numbers[left] + numbers[right]
            if sum == target {
                return [left+1, right+1]
            } else if sum < target {
                left += 1
            } else {
                right -= 1
            }
        }
        return [Int]()
    }
}





