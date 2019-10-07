//
//  String.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/30.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_String {
    
    // MARK: - leetcode 387
    
    func firstUniqChar(_ s: String) -> Int {
        var repeats = [Int](repeating: 0, count: 26)
        let a = 97
        for character in s.utf8 {
            repeats[Int(character)-a] += 1
        }
        
        for (index, character) in s.utf8.enumerated() {
            if repeats[Int(character)-a] == 1 {
                return index
            }
        }
        
        return -1
    }
    
    // MARK: - leetcode 443

    // 443
    func compress(_ chars: inout [Character]) -> Int {
        guard chars.count > 0 else {
            return 0
        }
        
        var character: Character = chars[0]
        var output = [Character]()
        var index = 1
        var repeats = 1
        
        while index < chars.count {
            if chars[index] == character {
                repeats += 1
                index += 1
            } else {
                reduce(chars: &output, c: character, repeats: repeats)
                
                character = chars[index]
                repeats = 1
                index += 1
            }
        }
        
        reduce(chars: &output, c: character, repeats: repeats)
        
        chars = output
        return output.count
    }

    func reduce(chars: inout [Character], c: Character, repeats: Int){
        chars.append(c)
        if repeats > 1 {
            let r: [Character] = "\(repeats)".map {$0}
            chars.append(contentsOf: r)
        }
    }


    // MARK: - leetcode 500
    
    func findWords(_ words: [String]) -> [String] {
        let dictionary = makeAlphabetDictionary()
        var results = [String]()
        
        for element in words {
            let lowercased = element.lowercased()
            let firstValue = dictionary[String(lowercased.first!)]!
            var sum = 0
            for character in lowercased {
                sum  += dictionary[String(character)]!
            }
            if sum == firstValue * element.count {
                results.append(element)
            } else {
                continue
            }
        }
        
        return results
    }
    
    func makeAlphabetDictionary() -> [String: Int] {
        let firstRows = [["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"],["a", "s", "d", "f", "g", "h", "j", "k", "l"],["z", "x", "c", "v", "b", "n", "m"]]
        var dictionary = [String: Int]()
        
        for (index, row) in firstRows.enumerated() {
            for element in row {
                dictionary[element] = index+1
            }
        }
        
        return dictionary
    }

    // MARK: - leetcode 1189

    func maxNumberOfBalloons(_ text: String) -> Int {
        // 清零
        let ballon: [Character] = "balloon".map {$0}
        var map = [Character: Int]()
        for e in ballon {
            map[e] = 0
        }
        // 统计
        for element in text {
            if let r = map[element] {
                map[element] = r + 1
            }
        }
        // 最小值
        var output = map.values.first!
        for (k, v) in map {
            var repeats = v
            if k == Character("l") || k == Character("o") {
                repeats = v / 2
            }
            if repeats < output {
                output = repeats
            }
        }
        return output
    }
}
