//
//  Math.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/2.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_Math {
    // MARK: - leetcode 367
    func isPerfectSquare(_ num: Int) -> Bool {
        var index = 1
        var square = index * index
        while square <= num {
            if square == num {
                return true
            }
            index += 1
            square = index * index
        }
        return false
    }

    // MARK: - leetcode 69
    func mySqrt(_ x: Int) -> Int {
        var index = 1
        while index * index <= x {
            index += 1
        }
        return index-1
    }
}
