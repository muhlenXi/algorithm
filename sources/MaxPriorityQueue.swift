//
//  MaxPriorityQueue.swift
//  HelloSwift
//
//  Created by muhlenXi on 2020/7/5.
//  Copyright © 2020 muhlenXi. All rights reserved.
//

import Foundation

public class MaxPriorityQueue<Element: Comparable> {
    /// 存储元素的数组
    private var elements: [Element]
    
    /// 初始化方法
    /// placeholder 占位元素，占用不使用的 index 0
    init(_ placeholder: Element) {
        elements = [Element]()
        elements.append(placeholder)
    }
    
    func max() -> Element? {
        guard elements.count > 1 else {
            return nil
        }
        return elements[1]
    }
    
    func insert(_ element: Element) {
        elements.append(element)
        let last = elements.count - 1
        swim(last)
    }
    
    func delMax() -> Element {
        let max = elements[1]
        let last = elements.count - 1
        swap(1, last)
        elements.removeLast()
        sink(1)
        return max
    }
    
    private func swim(_ k: Int) {
        var k = k
        /// 如果上浮到堆顶了，就不上浮了
        while k > 1, less(parent(k), k) {
            swap(parent(k), k)
            k = parent(k)
        }
    }
    
    private func sink(_ k: Int) {
        /// 如果下沉到堆底，就沉不下去了
        var k = k
        let last = elements.count - 1
        while leftChild(root: k) <= last{
            // 先假设 左孩子节点大
            var fakeMax = leftChild(root: k)
            if rightChild(root: k) <= last, less(fakeMax, rightChild(root: k)) {
                fakeMax = rightChild(root: k)
            }
            
            if less(fakeMax, k) {
                // k 节点比两个子节点都大
                break
            } else {
                //  不符合最大堆结构，继续下沉
                swap(fakeMax, k)
                k = fakeMax
            }
        }
    }
    
    private func less(_ i: Int, _ j: Int) -> Bool{
        return elements[i] < elements[j]
    }
    
    private func parent(_ root: Int) -> Int {
        return root / 2
    }
    
    private func leftChild(root: Int) -> Int {
        return root * 2
    }
    
    private func rightChild(root: Int) -> Int {
        return root * 2 + 1
    }
    
    private func swap(_ i: Int, _ j: Int) {
        elements.swapAt(i, j)
    }
}
