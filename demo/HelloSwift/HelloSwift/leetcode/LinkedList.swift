//
//  LinkedList.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/30.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct Leetcode_203 {
    /// 移除链表中指定值的节点 (循环方式)
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        
        let dummyNode: ListNode = ListNode(-1)
        dummyNode.next = head
        
        var previousNode: ListNode? = dummyNode
        var currentNode: ListNode? = dummyNode.next
        
        while currentNode != nil {
            if currentNode!.val == val {
                previousNode?.next = currentNode?.next
                currentNode = previousNode?.next
            } else {
                previousNode = previousNode?.next
                currentNode = previousNode?.next
            }
        }
        
        return dummyNode.next
    }
    
    /// 移除链表中指定值的节点 (递归方式)
    func removeElements1(_ head: ListNode?, _ val: Int) -> ListNode? {
        guard let head = head else {
            return nil
        }
        
        head.next = removeElements(head.next, val)
        return head.val == val ? head.next : head
    }
}
