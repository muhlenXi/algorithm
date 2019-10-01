//
//  LinkedList.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/30.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

struct LeetcodeLinkedList {
    // MARK: - leetcode 83
    /// 移除链表中重复元素
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        var currentNode = head
        while currentNode?.next != nil {
            if currentNode!.next!.val == currentNode!.val {
                currentNode?.next = currentNode?.next?.next
            } else {
                currentNode = currentNode?.next
            }
        }
        return head
    }

    // MARK: - leetcode 203
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
    
    // MARK: - leetcode 206
    func reverseList(_ head: ListNode?) -> ListNode? {
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
    
    // MARK: - leetcode 876
    // 链表中间节点
    func middleNode(_ head: ListNode?) -> ListNode? {
        var head: ListNode? = head
        var middleHead: ListNode? = head
        
        while head?.next != nil {
            head = head?.next?.next
            middleHead = middleHead?.next
        }
        
        return middleHead
    }
}
