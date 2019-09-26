//
//  387.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/26.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

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
