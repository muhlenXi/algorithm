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
   return kmp(text: haystack, pattern: needle)
}

func bruteForceSearch(text: String, pattern: String) -> Int {
    if pattern.count == 0 {
        return 0
    }
    if text.count < pattern.count {
        return -1
    }
    
    let texts = text.map { return $0 }
    let patterns = pattern.map { return $0 }
    
    var j = 0
    for i in 0..<text.count-pattern.count {
        while j < patterns.count {
            if texts[i+j] == patterns[j] {
                j += 1
            } else {
                j = 0
                break
            }
            if j == patterns.count {
                return i
            }
        }
    }
    
    return -1
}

func kmp(text: String, pattern: String) -> Int {
    if pattern.count == 0 {
        return 0
    }
    
    let texts = text.map { return $0 }
    let patterns = pattern.map { return $0 }
    let table = partialMatchTable(pattern)
    
    var i = 0
    var j = 0
    while i < text.count && j < patterns.count {
        if texts[i] == patterns[j] {
            j += 1
            i += 1
        } else {
            if j == 0 {
                i += 1
            } else {
               j = table[j-1]
            }
        }
        if j == patterns.count {
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


let a = "aaaaa"
let b = "abcaabc"


print(partialMatchTable(b))
print(strStr(a, b))
print(bruteForceSearch(text: a, pattern: b))
print(kmp(text: a, pattern: b))
