//
//  SelectionSort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

func selectionSort(array: inout [Int]){
    guard array.count > 1 else {
        return
    }
    
    for i in 0..<array.count {
        var minValueIndex = i
        for j in i+1..<array.count {
            if array[j] < array[minValueIndex] {
                minValueIndex = j
            }
        }
        if minValueIndex != i {
            let temp = array[i]
            array[i] = array[minValueIndex]
            array[minValueIndex] = temp
        }
    }
}
