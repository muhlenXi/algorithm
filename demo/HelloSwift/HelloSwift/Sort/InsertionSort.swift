//
//  InsertionSort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/26.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

func insertionSort(array: inout[Int]) {
    guard array.count > 1 else {
        return
    }
    
    for index in 1..<array.count {
        var currentIndex = index
        while currentIndex > 0 {
            if array[currentIndex-1] > array[currentIndex] {
                let temp = array[currentIndex-1]
                array[currentIndex-1] = array[currentIndex]
                array[currentIndex] = temp
            }
            currentIndex -= 1
        }
    }
}
