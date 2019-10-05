//
//  BinarySearch.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/2.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_BinaraySearch {
    // MARK: - leetcode 704
    /// 二分查找
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        var low = 0
        var high = nums.count-1
        
        while low <= high {
            let middle  = (low + high) / 2
            
            if nums[middle] == target {
                return middle
            } else if nums[middle] > target {
                high = middle-1
            } else {
                low = middle+1
            }
        }
        
        return -1
    }
}
