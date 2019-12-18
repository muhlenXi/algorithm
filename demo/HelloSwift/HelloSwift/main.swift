//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

func countAndSay(_ n: Int) -> String {
    if n == 1 {
        return "1"
    }
    
    var output = "1"
    for _ in 1..<n {
        say(&output)
    }
    return output
}

func say(_ text: inout String){
    let pattern = text
    var counts = 0
    text = ""
    var repeatCharacter = pattern.first!
    for element in pattern {
        if element == repeatCharacter {
            counts += 1
        } else {
            text.append("\(counts)")
            text.append(repeatCharacter)
            repeatCharacter = element
            counts = 1
        }
    }
    
    text.append("\(counts)")
    text.append(repeatCharacter)
}

print(countAndSay(1))
print(countAndSay(2))
print(countAndSay(3))
print(countAndSay(4))
print(countAndSay(5))
print(countAndSay(6))
print(countAndSay(7))

