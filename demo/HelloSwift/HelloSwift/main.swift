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
let node3 = ListNode(3)

node1.next = node2
node2.next = node3



func reverseList(_ head: ListNode?) -> ListNode? {
    if head == nil || head?.next == nil {
        return head
    }
    
    let next = reverseList(head?.next)
    
    head?.next?.next = head
    head?.next = nil
    
    return next
}

func reverseList1(_ head: ListNode?) -> ListNode? {
    var pre: ListNode? = nil
    var current: ListNode? = head
    var next: ListNode? = current?.next
    
    while current != nil {
        current?.next = pre
        pre = current
        
        current = next
        next = current?.next
    }
    
    return pre
}

//let n = reverseList(node1)
let n1 = reverseList1(node1)

//printList(n)
printList(n1)


