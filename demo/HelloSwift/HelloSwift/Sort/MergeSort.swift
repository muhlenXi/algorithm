//
//  MergeSort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/27.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

/// 合并两个有序数组
func mergeTwoSortedArray(firstArray: [Int], secondArray: [Int]) -> [Int] {
    guard firstArray.count > 0 else {
        return secondArray
    }
    
    guard secondArray.count > 0 else {
        return firstArray
    }
    
    var result = [Int]()
    var firstIndex = 0
    var secondIndex = 0
    while firstIndex < firstArray.count && secondIndex < secondArray.count {
        let firstValue = firstArray[firstIndex]
        let secondValue = secondArray[secondIndex]
        if firstValue < secondValue {
            result.append(firstValue)
            firstIndex += 1
        } else {
            result.append(secondValue)
            secondIndex += 1
        }
    }
    
    if firstIndex < firstArray.count {
        result.append(contentsOf: firstArray[firstIndex..<firstArray.count])
    }
    if secondIndex < secondArray.count {
        result.append(contentsOf: secondArray[secondIndex..<secondArray.count])
    }
    
    return result
}

/// 递归排序 分而治之
func mergeSort(array: [Int]) -> [Int] {
    guard array.count > 1 else {
        return array
    }
    
    let mid = array.count / 2
    let leftArray = mergeSort(array: Array(array[0..<mid]))
    let rightArray = mergeSort(array: Array(array[mid..<array.count]))
    
    return mergeTwoSortedArray(firstArray: leftArray, secondArray: rightArray)
}
