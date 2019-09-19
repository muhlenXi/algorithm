//
//  BubbleSort.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

func bubbleSort(array: inout [Int]) {
    guard array.count > 1 else {
        return
    }
    
    for i in 0..<array.count-1 {
        var changed = false
        for j in 0..<array.count-1-i {
            if array[j] > array[j+1] {
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp
                changed = true
            }
        }
        if !changed {
            break
        }
    }
}
