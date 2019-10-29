//
//  fibonacci.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/28.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

func fib(_ n: Int) -> Int {
    if n == 1 || n == 2 {
        return 1
    }
    return fib(n-1) + fib(n-2)
}

func fibWithCache(_ n: Int, cache: inout [Int: Int]) -> Int{
    switch n {
    case 1:
        cache[1] = 1
        return cache[1]!
    case 2:
        cache[2] = 1
        return cache[2]!
    default:
        let fib1 = cache[n-1] ?? fibWithCache(n-1, cache: &cache)
        let fib2 = cache[n-2] ?? fibWithCache(n-2, cache: &cache)
        cache[n] = fib1 + fib2
        return cache[n]!
    }
}


func fibByDP(_ n: Int) -> Int {
    var dp = Array(repeating: 0, count: n+1)
    dp[1] = 1
    dp[2] = 1
    for i in 3...n {
        dp[i] = dp[i-1] + dp[i-2]
    }
    return dp[n]
}

//print(fib(6))
//print(fibByDP(6))
//var dict = [Int: Int]()
//print(fibWithCache(6, cache: &dict))
