//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

/// 数据节点
class Node {
    var key: Int
    var value: Int
    /// 后继节点
    var next: Node?
    /// 前驱结点
    var prev: Node?
    var identifier: String
    
    init(_ key: Int, _ value: Int) {
        self.key = key
        self.value = value
        
        self.identifier = UUID().uuidString
    }
}

extension Node: Equatable {
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.identifier == rhs.identifier
    }
}

/// 双向链表类
class DoubleList {
    /// 虚拟头结点
    private var head: Node
    /// 虚拟尾结点
    private var tail: Node
    /// 当前链表大小
    private (set) var size: Int
    
    init() {
        head = Node(0, 0)
        tail = Node(0, 0)
        head.next = tail
        tail.prev = head
        size = 0
    }
    
    func addLast(_ node: Node) {
        // 串联后继节点
        tail.prev?.next = node
        node.next = tail
        // 串联前驱结点
        node.prev = tail.prev
        tail.prev = node
        
        size += 1
    }
    
    func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
        size -= 1
    }
    
    func removeFirst() -> Node? {
        if head.next == tail {
            return nil
        }
        
        let first = head.next!
        self.remove(first)
        return first
    }
}

/// LRU 缓存类
class LRUCache {
    private var hashMap: [Int: Node]
    private var cache: DoubleList
    private var cap: Int
    
    init(_ cap: Int) {
        self.hashMap = [Int: Node]()
        self.cache = DoubleList()
        self.cap = cap
    }
    
    func get(key: Int) -> Int {
        if !hashMap.keys.contains(key) {
            return -1
        }
        self.makeRecently(key)
        return hashMap[key]!.value
    }
    
    func put(key: Int, value: Int) {
        if hashMap.keys.contains(key) {
            self.deleteKey(key)
            self.addRecently(key, value)
            return
        }
        
        if cap == cache.size {
            self.deleteLeastRecently()
        }
        self.addRecently(key, value)
    }
}

extension LRUCache {
    /// 提升 key 对应的缓存节点
    private func makeRecently(_ key: Int) {
        if let node = hashMap[key] {
            cache.remove(node)
            cache.addLast(node)
        }
    }
    
    /// 添加最近使用的缓存节点
    private func addRecently(_ key: Int,_ value: Int) {
        let node = Node(key, value)
        cache.addLast(node)
        hashMap[key] = node
    }
    
    /// 删除 key 对应的缓存节点
    private func deleteKey(_ key: Int) {
        if let node = hashMap[key] {
            cache.remove(node)
            hashMap[key] = nil
        }
    }
    
    /// 删除未使用的缓存节点（最久）
    private func deleteLeastRecently() {
        if let first = cache.removeFirst() {
            hashMap[first.key] = nil
        }
    }
}
