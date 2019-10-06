//
//  Heap.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/6.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

// MARK: - 703
class KthLargest {
    
    var kth: Int
    var minHeap: [Int]

    init(_ k: Int, _ nums: [Int]) {
        self.kth = k
        self.minHeap = [Int]()
        
        for i in 0..<nums.count {
            // 最小堆未填满
            if self.minHeap.count < self.kth {
                self.minHeap.append(nums[i])
                self.buildHeap(tree: &self.minHeap, n: self.minHeap.count)
            } else { // 最小堆已填满
                _ = self.add(nums[i])
            }
        }
    }
    
    func add(_ val: Int) -> Int {
        // 最小堆未填满
        if self.minHeap.count < self.kth {
            self.minHeap.append(val)
            self.buildHeap(tree: &self.minHeap, n: self.minHeap.count)
        } else { // 最小堆已填满
            if val > self.minHeap[0] {
               self.minHeap[0] = val
               heapify(tree: &self.minHeap, n: self.minHeap.count, i: 0)
            }
        }
        return self.minHeap[0]
    }
    
    /// 对堆中的元素执行构建最小堆的操作
    func heapify(tree: inout [Int], n: Int, i: Int) {
        let left = 2*i+1
        let right = 2*i+2
        var min = i
        
        if left < n && tree[left] < tree[min] {
            min = left
        }
        if right < n && tree[right] < tree[min] {
            min = right
        }
        if min != i {
            tree.swapAt(i, min)
            heapify(tree: &tree, n: n, i: min)
        }
    }

    /// 将树中的元素构建成最小堆
    func buildHeap(tree: inout [Int], n: Int) {
        let lastNode = n - 1
        var p = (lastNode-1)/2
        while p >= 0 {
            heapify(tree: &tree, n: n, i: p)
            p -= 1
        }
    }
}
