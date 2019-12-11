//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// 28
func strStr(_ haystack: String, _ needle: String) -> Int {
    if needle.count == 0 {
        return 0
    }
    
    let haystackArray = haystack.map { return $0 }
    let needleArray = needle.map {return $0 }
    let table = partialMatchTable(needle)
    
    var i = 0
    var j = 0
    while i < haystackArray.count {
        while j < needleArray.count && i < haystackArray.count {
            if needleArray[j] == haystackArray[i] {
                j += 1
                i += 1
            } else {
                i = i + j + 1 - table[j]
                j = table[j]
            }
        }
        if j == needleArray.count {
            return i - j
        }
    }
    
    return -1
}

func partialMatchTable(_ string: String) -> [Int] {
    guard string.count > 0 else {
        return []
    }
    
    let characters = string.map { return $0 }
    var array = Array(repeating: 0, count: characters.count)
    
    for index in 0..<characters.count {
        var max = index
        while max > 0 {
            if characters[0..<max] == characters[index-max+1...index] {
                array[index] = max
                break
            }
            max -= 1
        }
    }
    
    return array
}


let haystack = "hello", needle = "ll"
let string = "abababca"
print(partialMatchTable(string))
print(strStr(haystack, needle))
