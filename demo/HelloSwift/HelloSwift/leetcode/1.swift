//
//  1.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/26.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

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

