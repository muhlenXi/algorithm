//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

let node1 = ListNode(1)
let node2 = ListNode(2)
let node4 = ListNode(4)
node1.next = node2
node2.next = node4

let node11 = ListNode(1)
let node33 = ListNode(3)
let node44 = ListNode(4)
node11.next = node33
node33.next = node44

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    if l1 == nil {
        return l2
    } else if l2 == nil {
        return l1
    }
    
    var node: ListNode?
    if l1!.val < l2!.val {
        node = l1
        node?.next = mergeTwoLists(l1?.next, l2)
    } else {
        node = l2
        node?.next = mergeTwoLists(l1, l2?.next)
    }
    return node
}

func mergeTwoLists1(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    let head = ListNode(Int.max)
    var current: ListNode? = head
    var list1: ListNode? = l1
    var list2: ListNode? = l2
    
    // 循环
    while list1 != nil || list2 != nil {
        switch (list1, list2) {
        case (nil, _):
            current?.next = list2
            return head.next
        case (_, nil):
            current?.next = list1
            return head.next
        case (let node1, let node2):
            if node1!.val < node2!.val {
                current?.next = list1
                current = current?.next
                list1 = list1?.next
            } else {
                current?.next = list2
                current = current?.next
                list2 = list2?.next
            }
        }
    }
    
    return head.next
}

let r = mergeTwoLists(node1, node11)
printList(r)



