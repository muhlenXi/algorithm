//
//  Math.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/2.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_Math {
    // MARK: - leetcode 69
    func mySqrt(_ x: Int) -> Int {
        var index = 1
        while index * index <= x {
            index += 1
        }
        return index-1
    }

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

    // MARK: - leetcode372

    /// 372
    func superPow(_ a: Int, _ b: [Int]) -> Int {
        var output = 1
        for element in b {
            output = qpow(x:output, n:10, mod:1337)*qpow(x:a, n: element, mod:1337)
            output =  output  % 1337
        }

        return output
    }

    func qpow(x: Int, n: Int, mod: Int) -> Int {
        var output = 1
        var n = n
        var x = x
        while n > 0 {
            if n & 1 == 1 {
                output =  output * x % mod
            }
            x = x * x % mod
            n = n >> 1
        }
        return output
    }
}
