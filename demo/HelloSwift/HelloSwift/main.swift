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

openDetailSceneByURL(scheme)
openDetailSceneByURL(h5)








































let array = [10,5,-3,3,2,nil,11,3,-2,nil,1]


let t1: TreeNode? = TreeNode(1)
let t2: TreeNode? = TreeNode(2)
let t3: TreeNode? = TreeNode(3)
let t4: TreeNode? = TreeNode(4)
let t5: TreeNode? = TreeNode(5)
let t6: TreeNode? = TreeNode(6)
let t7: TreeNode? = TreeNode(7)
let t8: TreeNode? = TreeNode(3)
let t9: TreeNode? = TreeNode(-2)
let t10: TreeNode? = nil
let t11: TreeNode? = TreeNode(1)
let t12: TreeNode? = TreeNode(12)
let t13: TreeNode? = TreeNode(13)
let t14: TreeNode? = TreeNode(14)
let t15: TreeNode? = TreeNode(15)

t1?.left = t2
t1?.right = t3
t2?.left = t4
t2?.right = t5
t3?.left = t6
t3?.right = t7
//t4?.left = t8
//t4?.right = t9
//t5?.left = t10
//t5?.right = t11
//t6?.left = t12
//t6?.right = t13
//t7?.left = t14
//t7?.right = t15

// 113
func pathSum(_ root: TreeNode?, _ sum: Int) -> [[Int]] {
    var ret = [[Int]]()
    guard root != nil else {
        return ret
    }
    
    
    
    return [[Int]]()
}

func binaryTreePaths(_ root: TreeNode?) -> [String] {
    guard let node = root else {
        return [String]()
    }
    
    if node.left == nil, node.right == nil {
        return ["\(node.val)"]
    }
    
    var strings = [String]()
    
    for element in binaryTreePaths(node.left) {
        var total = [String]()
        total.append("\(node.val)")
        total.append(element)
        strings.append(total.joined(separator: "->"))
    }
    
    for element in binaryTreePaths(node.right){
        var total = [String]()
        total.append("\(node.val)")
        total.append(element)
        strings.append(total.joined(separator: "->"))
    }
    
    return strings
}

print(binaryTreePaths(t1))











