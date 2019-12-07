//
//  Data.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/12/7.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func printList(_ head: ListNode?) {
    var currentNode: ListNode? = head
    while currentNode != nil {
        print(currentNode!.val)
        currentNode = currentNode!.next
    }
}
