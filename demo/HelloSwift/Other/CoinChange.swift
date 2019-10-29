//
//  CoinChange.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/29.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

/**
 问题：提供 k 种面值的硬币，面值分别为 c1, c2, ...ck, 再给一个总金额 n, 问最少需要几枚硬币凑出这个金额，如果不可能凑出，返回 -1 。
 */

var coins = [1, 2, 5]

func coinChange(coins: [Int], amount: Int) -> Int{
    guard amount > 0 else { return 0 }
    
    var result = Int.max
    
    for coin in coins {
        if amount-coin < 0 { continue }
        let subProb = coinChange(coins: coins, amount: amount-coin)
        if subProb == -1 { continue }
        
        result = min(result, subProb+1)
    }
    
    return result == Int.max ? -1 : result
}

func coinChangeDP(coins: [Int], amount: Int) -> Int {
    var dp = Array(repeating: amount+1, count: amount+1)
    dp[0] = 0
    for element in 1...amount {
        for coin in coins {
            if element - coin < 0 {
                continue
            }
            dp[element] = min(dp[element], 1+dp[element-coin])
        }
    }
    return dp[amount] == amount+1 ? -1 : dp[amount]
}


//print(coinChange(coins: coins, amount: 11))
//print(coinChangeDP(coins: coins, amount: 11))

