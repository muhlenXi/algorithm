//
//  Sort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2020/3/20.
//  Copyright © 2020 muhlenXi. All rights reserved.
//
// selection bubble insert shell merge


import Foundation

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

func merge(_ numbers: [Int]) -> [Int] {
    return divide(nums)
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



