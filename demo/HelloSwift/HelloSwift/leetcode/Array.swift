//
//  Array.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/30.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_Array {
    
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
    
    // MARK: - leetcode 1002
    
    /// 寻找两个字符串中的交集字符串
    func findCommonString(_ s1: String, _ s2: String) -> String {
        var repeats1 = Array(repeating: 0, count: 26)
        var repeats2 = Array(repeating: 0, count: 26)
        let alphabets = "abcdefghijklmnopqrstuvwxyz".map({$0})

        for element in s1.utf8 {
            repeats1[Int(element)-97] += 1
        }
        for element in s2.utf8 {
            repeats2[Int(element)-97] += 1
        }

        var output = ""
        for i in 0..<repeats1.count {
            if repeats1[i] != 0 && repeats2[i] != 0 {
                let repeats = repeats1[i] < repeats2[i] ? repeats1[i] : repeats2[i]
                for _ in 0..<repeats {
                    output.append(alphabets[i])
                }
            }
        }
        return output
    }
    
    /// 寻找多个字符串的交集字符数组
    func commonChars(_ A: [String]) -> [String] {
        guard A.count > 1 else {
            return A
        }

        var common = findCommonString(A[0], A[1])
        for index in 1..<A.count {
            common = findCommonString(common, A[index])
        }

        return common.map {"\($0)"}
    }
}





