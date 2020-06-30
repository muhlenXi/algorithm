//
//  Sort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2020/3/20.
//  Copyright © 2020 muhlenXi. All rights reserved.
//
// selection bubble insert shell merge


import Foundation

// MARK: - Selection

func selection(_ numbers: inout [Int]) {
    guard numbers.count > 1 else { return }
    
    for indexI in 0..<numbers.count-1 {
        var minIndex = indexI
        for indexJ in minIndex+1..<numbers.count {
            minIndex =  numbers[indexJ] < numbers[minIndex] ? indexJ : minIndex
        }
        numbers.swapAt(indexI, minIndex)
    }
}

// MARK: - Bubble

func bubble(_ numbers: inout [Int]) {
    guard numbers.count > 1 else {
        return
    }
    
    var total = numbers.count
    while total > 0 {
        
        var changed = false
        var index = 0
        while index < numbers.count-1 {
            if numbers[index] > numbers[index+1] {
                numbers.swapAt(index, index+1)
                changed = true
            }
            index += 1
        }
        if !changed {
            break
        }
        
        total -= 1
    }
}

// MARK: - Insert Shell

func insert(_ numbers: inout [Int], gap: Int = 1) {
    guard numbers.count > 1 else { return }
    
    for g in 0..<gap {
        var i = g
        while i < numbers.count {
            var current = i
            while current-gap >= 0 && numbers[current-gap] > numbers[current] {
                numbers.swapAt(current, current-gap)
                current -= gap
            }
            
            i += gap
        }
    }
}

func shell(_ numbers: inout [Int]) {
    guard numbers.count > 1 else { return }
    
    var gap = numbers.count / 2
    while gap != 0 {
        insert(&numbers, gap: gap)
        gap = gap / 2
    }
}

// MARK: - Merge


func merge(_ numbers: [Int]) -> [Int] {
    return divide(numbers)
}

func divide(_ numbers: [Int]) -> [Int] {
    guard numbers.count > 1 else { return numbers }
    
    let mid = (0+numbers.count-1)/2
    let leftNumbers = divide(Array(numbers[0...mid]))
    let rightNumbers = divide(Array(numbers[mid+1..<numbers.count]))
    return join(leftNumbers, rightNumbers)
}

func join(_ leftNumbers: [Int], _ rightNumbers: [Int]) -> [Int] {
    var result = [Int]()
    
    var leftIndex = 0
    var rightIndex = 0
    while leftIndex < leftNumbers.count && rightIndex < rightNumbers.count {
        if leftNumbers[leftIndex] <= rightNumbers[rightIndex] {
            result.append(leftNumbers[leftIndex])
            leftIndex += 1
        } else {
            result.append(rightNumbers[rightIndex])
            rightIndex += 1
        }
    }
    
    if leftIndex < leftNumbers.count {
        result.append(contentsOf: Array(leftNumbers[leftIndex..<leftNumbers.count]))
    }
    if rightIndex < rightNumbers.count {
        result.append(contentsOf: Array(rightNumbers[rightIndex..<rightNumbers.count]))
    }
    
    return result
}

// MARK: - Quick

func quick(_ numbers: [Int]) -> [Int] {
    guard numbers.count > 1 else {
        return numbers
    }
    
    let pivot = numbers[numbers.count/2]
    let less = numbers.filter { $0 < pivot }
    let equal = numbers.filter { $0 == pivot }
    let greater = numbers.filter { $0 > pivot }
    
    return quick(less) + equal + quick(greater)
}

// MARK: - Count

func count(_ numbers: [Int]) -> [Int]{
    guard numbers.count > 1 else {
        return numbers
    }
    
    // 计数
    let maxVal = numbers.max()!
    var counts = Array(repeating: 0, count: maxVal+1)
    for element in numbers {
        counts[element] += 1
    }
    
    // 重组
    var result = numbers
    var resultIndex = 0
    for (index, val) in counts.enumerated() {
        for _ in 0..<val {
            result[resultIndex] = index
            resultIndex += 1
        }
    }
    return result
}

// MARK: - Radix

func radix(_ numbers: [Int]) -> [Int] {
    guard numbers.count > 1 else {
        return numbers
    }
    
    let totalDigit = getTotalDigit(numbers.max()!)
    var tempts = Array(repeating: [Int](), count: 10)
    var result = numbers
    
    for digit in 0..<totalDigit {
        // 按照指定 digit 进行分类
        tempts = Array(repeating: [Int](), count: 10)
        for element in result {
            let index = getDigit(element, digit)
            tempts[index].append(element)
        }
        // 合并
        result = tempts.flatMap { $0 }
    }
    return result
}

/// 获取数值的总位数
func getTotalDigit(_ number: Int) -> Int {
    guard number > 0 else {
        return 1
    }
    
    var length = 0
    var target = 1
    while number >= target {
        length += 1
        target *= 10
    }
    return length
}

/// 获取数值相应位上的数字
func getDigit(_ number: Int, _ Index: Int) -> Int{
    let num1 = pow(10, Index+1)
    let num2 = pow(10, Index)
    return number % num1 / num2
}

/// 计算 x 的 y 次方
func pow(_ x: Int, _ y: Int) -> Int {
    var result = 1
    for _ in 0..<y {
        result *= x
    }
    return result
}

// MARK: - Bucket

func bucket(_ numbers: [Int]) -> [Int] {
    guard numbers.count > 0 else { return numbers}
    
    let totalBucket = 10
    var buckets = Array(repeating: [Int](), count: totalBucket)
    let minVal = numbers.min()!
    let maxVal = numbers.max()!

    for element in numbers {
        let bucketIndex = getBucketIndex(element, minVal, maxVal, totalBucket)
        addElementToBucket(&buckets[bucketIndex], element)
    }
    
    return buckets.flatMap { $0 }
}

/// 获取要加入桶的 index
func getBucketIndex(_ element: Int, _ minVal: Int, _ maxVal: Int, _ totalBucket: Int) -> Int {
    var index = 0
    let capacity = Double(maxVal-minVal) / Double(totalBucket)
    var target = capacity
    while Double(element-minVal) > target {
        target += capacity
        index += 1
    }
    return index
}

/// 桶内新增元素并排序
func addElementToBucket(_ bucket: inout [Int], _ element: Int) {
    bucket.append(element)
    // sort
    var index = bucket.count - 1
    while index - 1 >= 0 && bucket[index-1] > bucket[index] {
        bucket.swapAt(index-1, index)
        index -= 1
    }
}

// MARK: - Heap

func heap(_ numbers: inout [Int]) {
    var lastIndex = numbers.count - 1
    while lastIndex >= 0 {
        buildHeap(&numbers, lastIndex)
        numbers.swapAt(0, lastIndex)
        lastIndex -= 1
    }
}

// 构建最大堆
func buildHeap(_ numbers: inout [Int], _ lastIndex: Int) {
    var parent = (lastIndex - 1) / 2
    while parent >= 0 {
        heapify(&numbers, parent, lastIndex)
        parent -= 1
    }
}

// 对指定 index 元素进行 heapify, lastIndex 数组的最后一个元素的 index
func heapify(_ numbers: inout [Int], _ index: Int, _ lastIndex: Int) {
    guard index < lastIndex else {
        return
    }
    
    let left = index * 2 + 1
    let right = index * 2 + 2
    var max = index
    if left <= lastIndex && numbers[left] > numbers[max] {
        max = left
    }
    if right <= lastIndex && numbers[right] > numbers[max] {
        max = right
    }
    if max != index {
        numbers.swapAt(index, max)
        heapify(&numbers, max, lastIndex)
    }
}


