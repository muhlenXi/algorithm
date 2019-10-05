//
//  Sort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/5.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_Sort {
    // MARK: - leetcode 242
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var repeats: [Int] = Array(repeating: 0, count: 26)
        let aValue = 97
        
        for element in s.utf8 {
            let index = Int(element) - aValue
            repeats[index] += 1
        }
        
        for element in t.utf8 {
            let index = Int(element) - aValue
            repeats[index] -= 1
        }
        
        for element in repeats {
            if element != 0 {
                return false
            }
        }
        
        return true
    }
    
    // MARK: - leetcode 349

    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map1 = [Int: Int]()
        var map2 = [Int: Int]()
        
        for element in nums1 {
            map1[element] = 1
        }
        for element in nums2 {
            map2[element] = 1
        }
        
        var output = [Int]()
        for (k, _) in map2 {
            if let _ = map1[k]{
                output.append(k)
            }
        }
        
        return output
    }

    func intersection1(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        var minArray = nums1
        var maxArray = nums2
        
        if minArray.count > maxArray.count {
            minArray = nums2
            maxArray = nums1
        }
        
        var outputs = [Int]()
        for number in minArray {
            if maxArray.contains(number) && !outputs.contains(number) {
                outputs.append(number)
            }
        }
        
        return outputs
    }

    // MARK: - leetcode 350

    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var map1 = [Int: Int]()
        for element in nums1 {
            if let repeats = map1[element] {
                map1[element] = repeats + 1
            } else {
                map1[element] = 1
            }
        }
        
        var output = [Int]()
        for element in nums2 {
            if let repeats = map1[element] {
                map1[element] = repeats == 1 ? nil : repeats-1
                output.append(element)
            }
        }
        return output
    }
}
