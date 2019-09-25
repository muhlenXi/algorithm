//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

let numbers = [2, 7, 11, 15]

func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
    guard numbers.count > 1 else {
        return [Int]()
    }
    
    var left = 0
    var right = numbers.count-1
    var sum = 0
    
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

print(twoSum(numbers, 9))

