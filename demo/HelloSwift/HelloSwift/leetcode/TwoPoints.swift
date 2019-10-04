//
//  TwoPoints.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/2.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_TwoPoints{
    // MARK: - leetcode 344
    func reverseString(_ s: inout [Character]) {
        var low = 0
        var high = s.count-1
        
        while low < high {
            let temp = s[low]
            s[low] = s[high]
            s[high] = temp
            
            low += 1
            high -= 1
        }
    }
    
    // MARK: - leetcode 345
    func reverseVowels(_ s: String) -> String {
        // 拆分、统计元音字母的index
        var sArray = [Character]()
        let vowels: [Character] = ["a", "A", "e", "E", "i", "I", "o", "O", "u", "U"]
        var vowelsIndex = [Int]()
        
        for (index, c) in s.enumerated() {
            sArray.append(c)
            if vowels.contains(c) {
                vowelsIndex.append(index)
            }
        }
        
        // 翻转元音字母
        var low = 0
        var high = vowelsIndex.count-1
        while low < high {
            let temp = sArray[vowelsIndex[low]]
            sArray[vowelsIndex[low]] = sArray[vowelsIndex[high]]
            sArray[vowelsIndex[high]] = temp
            
            low += 1
            high -= 1
        }
        
        // 组合新 string
        var result = ""
        for c in sArray {
            result += "\(c)"
        }
        return result
    }
}
