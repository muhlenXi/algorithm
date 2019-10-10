//
//  BinarySearch.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/2.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_BinaraySearch {
    // MARK: - leetcode 658
    
    /// 二分查找元素最接近区间
    func findClosedRange(_ arr: [Int], _ x: Int) -> [Int] {
        guard arr.count > 0 else {
            return [Int]()
        }
        
        if x <= arr.first! {
            return [0]
        } else if x >= arr.last! {
            return [arr.count-1]
        } else {
            var low = 0
            var high = arr.count-1
            while high - low > 1 {
                let midIndex = (low+high)/2
                if arr[midIndex] == x {
                    return [midIndex]
                } else if arr[midIndex] < x {
                    low = midIndex
                } else {
                    high = midIndex
                }
            }
            return [low, high]
        }
    }
    
    /// 658
    func findClosestElements1(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
        if x <= arr[0] {
            return Array(arr[0..<k])
        } else if x >= arr[arr.count-1] {
            return Array(arr[arr.count-k..<arr.count])
        }
        
        let range = findClosedRange(arr, x)
        var low  = max(0, range.first!-k)
        var high = min(arr.count-1, range.last!+k)
        
        while high-low+1 != k {
            if abs(arr[low]-x) <= abs(arr[high]-x) {
                high -= 1
            } else {
                low += 1
            }
        }
        
        return Array(arr[low...high])
    }
    
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
