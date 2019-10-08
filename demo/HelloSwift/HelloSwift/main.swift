//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// MARK: - leetcode 1

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var map = [Int: Int]()
    for (index, element) in nums.enumerated() {
        if let index0 = map[target-element] {
            return [index0, index]
        } else {
            map[element] = index
        }
    }
    
    return [Int]()
}

print(twoSum([2, 7, 11, 15], 9))
