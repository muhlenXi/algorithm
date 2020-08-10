//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

protocol MyProtocol {
    
}
struct MyStruct {
}
extension MyStruct: MyProtocol {
    func extensionMethod() {
        print("结构体")
    }
}
extension MyProtocol {
    func extensionMethod() {
        print("协议")
    }
}
 
let myStruct = MyStruct()
let proto: MyProtocol = myStruct
 
myStruct.extensionMethod() // -> “结构体”
proto.extensionMethod() // -> “协议”
