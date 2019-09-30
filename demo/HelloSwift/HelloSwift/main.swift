//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    if l1 == nil {
        return l2
    }
    if l2 == nil {
        return l1
    }
    
    if l1!.val < l2!.val {
        l1!.next = mergeTwoLists(l1!.next, l2)
        return l1
    } else {
        l2!.next = mergeTwoLists(l2!.next, l1)
        return l2
    }
}

func reverseList(_ head: ListNode?) -> ListNode?{
    var previous: ListNode? = nil
    var current: ListNode? = head
    var next: ListNode? = head?.next
    
    while current != nil {
        /// 将当前节点的 next 指向已反转好的列表，构成新的已反转列表
        current?.next = previous
        /// previous 指向新的已反转列表
        previous = current
        
        /// 更新 当前 节点
        current = next
        /// 更新 next 节点
        next = current?.next
    }
    
    return previous
}

func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
    guard let head = head else {
        return nil
    }
    
    head.next = removeElements(head.next, val)
    return head.val == val ? head.next : head
}

func printList(_ head: ListNode?) {
    var currentNode: ListNode? = head
    while currentNode != nil {
        print(currentNode!.val)
        currentNode = currentNode!.next
    }
}

let node0 = ListNode(3)
let node1 = ListNode(3)
let node2 = ListNode(3)
let node3 = ListNode(1)
let node4 = ListNode(3)
let node5 = ListNode(5)
let node6 = ListNode(3)


node0.next = node1
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6

let re = removeElements(node0, 3)
printList(re)



