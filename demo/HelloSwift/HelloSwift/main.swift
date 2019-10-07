//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

//let node0 = ListNode(1)
//let node1 = ListNode(2)
//let node2 = ListNode(3)
//let node3 = ListNode(4)
//let node4 = ListNode(5)
//let node5 = ListNode(6)
//let node6 = ListNode(4)
//
//node0.next = node1
//node1.next = node2
//node2.next = node3
//node3.next = node4
//
//node4.next = node5
//node5.next = node6



var node0 = TreeNode(1)
var node1 = TreeNode(2)
var node2 = TreeNode(3)

var node3 = TreeNode(3)
var node4 = TreeNode(4)
var node5 = TreeNode(5)
var node6 = TreeNode(2)

node0.left = node1
node0.right = node2

node1.left = node3
node1.right = node4

node2.left = node5
node2.right = node6



print(findMode(node0))


