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


let t1 = TreeNode(1)
let t2 = TreeNode(2)
let t3 = TreeNode(3)

let t4 = TreeNode(4)
let t5 = TreeNode(5)

let t6 = TreeNode(6)
let t7 = TreeNode(7)
t1.left = t2
t1.right = t3

t2.left = t4
t2.right = t5

t3.left = t6
t3.right = t7


func licenseKeyFormatting(_ S: String, _ K: Int) -> String {
    guard K != 0 else {
        return ""
    }
    
    let characters = S
        .uppercased()
        .map { return $0 }
        .filter { $0 != Character("-") }
    var outputs = [String]()
    
    var index = characters.count-1
    while index >= 0 {
        let low = max(0, index-K+1)
        outputs.insert(String(characters[low...index]), at: 0)
        index -= K
    }
    
    return outputs.joined(separator: "-")
}


let s = "5f3z-2e-9-w"
let k = 0
print(licenseKeyFormatting(s, k))









