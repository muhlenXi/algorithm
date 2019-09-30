//
//  String.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/30.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_387 {
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
}

struct Leetcode_500 {
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

}
