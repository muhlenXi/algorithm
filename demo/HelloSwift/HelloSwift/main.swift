//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// let nums = [-1,-1,-1,-1,-1, 0]

let nums = [-1,-1,-1,0,1,1]

func pivotIndex(_ nums: [Int]) -> Int {
    var right = 0
    for element in nums {
        right += element
    }
    
    var left = 0
    for index in 0..<nums.count {
        right -= nums[index]
        if left == right {
            return index
        }
        left += nums[index]
    }
    return -1
}

print(pivotIndex(nums))
