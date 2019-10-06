//
//  HeapSort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/10/6.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

/// 对堆中的元素执行构建最大堆的操作
func heapify(tree: inout [Int], n: Int, i: Int) {
    let left = 2*i+1
    let right = 2*i+2
    var max = i
    
    if left < n && tree[left] > tree[max] {
        max = left
    }
    if right < n && tree[right] > tree[max] {
        max = right
    }
    if max != i {
        tree.swapAt(i, max)
        heapify(tree: &tree, n: n, i: max)
    }
}

/// 将树中的元素构建成最大堆
func buildHeap(tree: inout [Int], n: Int) {
    let lastNode = n - 1
    var p = (lastNode-1)/2
    while p >= 0 {
        heapify(tree: &tree, n: n, i: p)
        p -= 1
    }
}

/// 堆排序
func heapSort(tree: inout [Int]) {
    buildHeap(tree: &tree, n: tree.count)
    
    var i = tree.count-1
    while i >= 0 {
        tree.swapAt(0, i)
        heapify(tree: &tree, n: i, i: 0)
        i -= 1
    }
}
