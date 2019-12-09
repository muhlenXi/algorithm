//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

func fib(_ n: Int) -> Int{
    var caches = [Int: Int]()
    return fib(n, &caches)
}

func fib(_ n: Int, _ cache: inout[Int: Int]) -> Int{
    if let value = cache[n]{
        return value
    }
    
    if n == 0 || n == 1 {
        cache[n] = 1
        return 1
    }
    let fibN = fib(n-1, &cache) + fib(n-2, &cache)
    cache[n] = fibN
    return fibN
}

let f5 = fib(5)
print(f5)




