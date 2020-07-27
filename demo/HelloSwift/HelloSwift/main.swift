//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

func isSubsequence(_ s: String, _ t: String) -> Bool {
    guard s.count > 0 else { return true }
    
    let ss = s.map { return $0 }
    var si = 0
    for element in t {
        if element == ss[si] {
            si += 1
            if si == s.count {
                return true
            }
        }
    }
    return false
}

let s = "abc"
let t = "annbnncjj"
print(isSubsequence(s, t))
