//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

public enum URLActionType: String {
    case getCompanyDetailA = "getCompanyDetailA"
    case getCompanyDetailB = "getCompanyDetailB"
    
    case getNewsDetailA = "getNewsDetailA"
    case getNewsDetailB = "getNewsDetailB"
    
    case getProsonalFileA = "getProsonalFileA"
    case getProsonalFileB = "getProsonalFileB"
    
    case getCompanyNewsA = "getCompanyNewsA"
    case getCompanyNewsB = "getCompanyNewsB"
}

func openDetailSceneByURL(_ url: URL?) {
    guard let url = url else { return }
    
    var dictionary = [String: String]()
    let componetns = URLComponents.init(url: url, resolvingAgainstBaseURL: true)
    if let queryItems = componetns?.queryItems {
        for item in queryItems {
            dictionary[item.name] = item.value
        }
    }
    
    let absoluteString = url.absoluteString
    
    if absoluteString.contains(URLActionType.getCompanyDetailA.rawValue) || absoluteString.contains(URLActionType.getCompanyDetailB.rawValue) {
        
    }
    if absoluteString.contains(URLActionType.getNewsDetailA.rawValue) || absoluteString.contains(URLActionType.getNewsDetailB.rawValue) {
        
    }
    if absoluteString.contains(URLActionType.getProsonalFileA.rawValue) || absoluteString.contains(URLActionType.getProsonalFileB.rawValue) {
        
    }
    if absoluteString.contains(URLActionType.getCompanyNewsA.rawValue) || absoluteString.contains(URLActionType.getCompanyNewsB.rawValue) {
        
    }
}

let scheme = URL(string:"tulong.fazzaco://getCompanyDetailA?languageType=0&userId=778&traderId=106")!
let h5 = URL(string:"https://www.fazzaco.com/h5/getCompanyDetailA?languageType=0&userId=778&traderId=106&from=singlemessage&isappinstalled=0&scene=1&clicktime=1577426014&enterid=1577426014")!

//print(scheme.query)
//print(scheme.host)
//
//print(h5.query)
//print(h5.host)

openDetailSceneByURL(scheme)
openDetailSceneByURL(h5)



func romanToInt(_ s: String) -> Int {
    let I = Character("I")
    let V = Character("V")
    let X = Character("X")
    let L = Character("L")
    let C = Character("C")
    let D = Character("D")
    let M = Character("M")
    
    let keys = [I, V, X, L, C, D, M]
    let values = [1, 5, 10, 50, 100, 500, 1000]
    var tables = [Character: Int]()
    for index in 0..<keys.count {
        tables[keys[index]] = values[index]
    }
    
    let ss = s.map { return $0 }
    var sum = 0
    var index = 0
    while index < ss.count {
        switch ss[index] {
        case I:
            if index+1 < ss.count && ss[index+1] == V {
                sum = sum + tables[ss[index + 1]]! - tables[ss[index]]!
                index += 2
                continue
            }
            if index+1 < ss.count && ss[index+1] == X {
                sum = sum + tables[ss[index + 1]]! - tables[ss[index]]!
                index += 2
                continue
            }
            sum += tables[ss[index]]!
        case X:
            if index+1 < ss.count && ss[index+1] == L {
                sum = sum + tables[ss[index + 1]]! - tables[ss[index]]!
                index += 2
                continue
            }
            if index+1 < ss.count && ss[index+1] == C {
                sum = sum + tables[ss[index + 1]]! - tables[ss[index]]!
                index += 2
                continue
            }
            sum += tables[ss[index]]!
        case C:
            if index+1 < ss.count && ss[index+1] == D {
                sum = sum + tables[ss[index + 1]]! - tables[ss[index]]!
                index += 2
                continue
            }
            if index+1 < ss.count && ss[index+1] == M {
                sum = sum + tables[ss[index + 1]]! - tables[ss[index]]!
                index += 2
                continue
            }
            sum += tables[ss[index]]!
        default:
            sum += tables[ss[index]]!
        }
        index += 1
    }
    
    return sum
}

/// III 3 IV 4 IX 9 LVIII 58 MCMXCIV 1994
print(romanToInt(s: "MCMXCIV"))











