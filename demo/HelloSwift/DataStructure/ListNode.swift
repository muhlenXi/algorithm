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

class Traversal {
    // 144
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var ret = [Int]()
        preorderTraversalLoop(&ret, root)
        return ret
    }

    func preorderTraversalRecursion(_ result: inout [Int], _ node: TreeNode?) {
        guard let n = node else {
            return
        }
        result.append(n.val)
        preorderTraversalRecursion(&result, n.left)
        preorderTraversalRecursion(&result, n.right)
    }

    func preorderTraversalLoop(_ result: inout [Int], _ node: TreeNode?) {
        guard let root = node else {
            return
        }
        
        var stack = [TreeNode]()
        var node: TreeNode? = root
        
        while !stack.isEmpty || node != nil {
            while node != nil {
                stack.append(node!)
                result.append(node!.val)
                node = node?.left
            }
            
            let cur = stack.removeLast()
            node = cur.right
        }
    }

    // 94
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var ret = [Int]()
        inorderTraversalLoop(&ret, root)
        return ret
    }

    func inorderTraversalLoop(_ result: inout [Int], _ node: TreeNode?) {
        guard let n = node else {
            return
        }
        
        var stack = [TreeNode]()
        var node: TreeNode? = n
        
        while !stack.isEmpty || node != nil {
            if node != nil {
                stack.append(node!)
                node = node?.left
            } else {
                let n = stack.removeLast()
                result.append(n.val)
                
                if n.right != nil {
                    node = n.right
                }
            }
        }
    }

    func inorderTraversalRecursion(_ result: inout [Int], _ node: TreeNode?) {
        guard let n = node else {
            return
        }
        
        inorderTraversalRecursion(&result, n.left)
        result.append(n.val)
        inorderTraversalRecursion(&result, n.right)
    }

    // 145
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var ret = [Int]()
        postorderTraversalLoop(&ret, root)
        return ret
    }

    func postorderTraversalLoop(_ result: inout [Int], _ node: TreeNode?) {
        guard let n = node else {
            return
        }
        
        var stack = [TreeNode]()
        var node: TreeNode? = n
        var flag: TreeNode?
        
        while !stack.isEmpty || node != nil {
            if node != nil {
                stack.append(node!)
                node = node?.left
            } else {
                let top = stack.last!
                if top.right == nil || (flag != nil && flag!.val == top.right!.val) {
                    result.append(top.val)
                    stack.removeLast()
                    flag = top
                    node = nil
                } else {
                    node = top.right
                }
            }
        }
    }

    func postorderTraversalRecursion(_ result: inout [Int], _ node: TreeNode?) {
        guard let n = node else {
            return
        }
        
        postorderTraversalRecursion(&result, n.left)
        postorderTraversalRecursion(&result, n.right)
        result.append(n.val)
    }
}
