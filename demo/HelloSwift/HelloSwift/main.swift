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

func printList(_ head: ListNode?) {
    var currentNode: ListNode? = head
    while currentNode != nil {
        print(currentNode!.val)
        currentNode = currentNode!.next
    }
}



let node0 = ListNode(1)
let node1 = ListNode(2)
let node2 = ListNode(3)
let node3 = ListNode(4)
let node4 = ListNode(5)
let node5 = ListNode(6)
let node6 = ListNode(4)

node0.next = node1
node1.next = node2
node2.next = node3
node3.next = node4

node4.next = node5
//node5.next = node6

let numbers = [8]
let target = 8

// MARK: - leetcode 704
/// 二分查找
func search(_ nums: [Int], _ target: Int) -> Int {
    
    var low = 0
    var high = numbers.count-1
    
    while low <= high {
        let middle  = (low + high) / 2
        
        if numbers[middle] == target {
            return middle
        } else if numbers[middle] > target {
            high = middle-1
        } else {
            low = middle+1
        }
    }
    
    return -1
}

print(search(numbers, target))




