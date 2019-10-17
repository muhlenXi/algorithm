//
//  BinarySearch.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/2.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_BinaraySearch {
    
    // MARK: - Leetcode 378. Kth Smallest Element in a Sorted Matrix
    /// 378
    func kthSmallest(_ matrix: [[Int]], _ k: Int) -> Int {
        var low = matrix[0][0]
        var high = matrix[matrix.count-1][matrix.count-1]
        var mid = 0
        var counts = 0
        
        while low < high {
            mid = low + (high-low)/2
            counts = countsNumberIn(matrix: matrix, target: mid)
            if counts < k {
                low = mid + 1
            } else {
                high = mid
            }
        }
        
        return low
    }

    /// 统计小于等于 target 的个数
    func countsNumberIn(matrix: [[Int]], target: Int) -> Int {
        var count = 0
        for i in 0..<matrix.count {
            for j in 0..<matrix.count {
                if matrix[i][j] <= target {
                    count += 1
                } else {
                    break
                }
            }
        }
        return count
    }

    
    // MARK: leetcode 410. Split Array Largest Sum
    // 410
    func splitArray(_ nums: [Int], _ m: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        // 当 m = 1 时，分组的组内最大和为 sum
        // 当 m = nums.count 时，分组的组内最大和为 maxValueElement
        var low = 0
        var high = 0
        for element in nums {
            low = max(low, element)
            high = high + element
        }
        
        while low < high {
            let mid = low + (high-low)/2  // 这么写，是防止和过大导致 Int 溢出
            let canSplite = canSpliteIntoMoreMGroups(nums: nums, target: mid, m: m)
            if canSplite {  // 目标值取的小了，应加大
                low = mid + 1
            } else {
                high = mid
            }
        }
        
        return low
    }

    /// 组内和不超过 target 的分组数是否大于 m 个
    func canSpliteIntoMoreMGroups(nums: [Int], target: Int, m: Int) -> Bool {
        var group = 1
        var sum = 0
        for element in nums {
            sum += element
            if sum > target {
                group += 1
                sum = element
            }
            if group > m {
                return true
            }
        }
        return false
    }

    
    // MARK: - leetcode 658.Find K Closest Elements
    
    /// 658
    func findClosestElements(_ arr: [Int], _ k: Int, _ x: Int) -> [Int] {
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
    
    // MARK: - leetcode 704. Binary Search

    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count-1
        
        while low <= high {
            let mid = low + (high-low)/2
            if nums[mid] < target {
                low = mid + 1
            } else if nums[mid] > target {
                high = mid - 1
            } else {
                return mid
            }
        }
        return -1
    }
    
    // MARK: - Leetcode 719. Find K-th Smallest Pair Distance
    /// 719
    func smallestDistancePair(_ nums: [Int], _ k: Int) -> Int {
        let numbers = nums.sorted()
        
        var low = 0
        var high = numbers[numbers.count-1] - numbers[0]
        var mid = 0
        var count = 0
        
        while low < high {
            mid = low + (high-low)/2
            count = countsNumberInList(numbers, target: mid)
            if count < k {
                low = mid + 1
            } else {
                high = mid
            }
        }
        return low
    }

    /// 统计小于等于 target 的个数
    func countsNumberInList(_ list: [Int], target: Int) -> Int {
        var count = 0
        for i in 0..<list.count {
            let begin = i + 1
            var end = i + 1
            while end < list.count && list[end]-list[i] <= target {
                end += 1
            }
            count += (end - begin)
        }
        return count
    }
}
