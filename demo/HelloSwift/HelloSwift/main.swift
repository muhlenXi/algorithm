//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation


func qpow(x: Int, n: Int) -> Int {
    var output = 1
    var n = n
    var x = x
    while n > 0 {
        if n & 1 == 1 {
            output *= x
        }
        x = x * x
        n = n >> 1
    }
    return output
}

print(qpow(x: 5, n: 3))
