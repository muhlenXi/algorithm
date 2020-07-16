//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation

let graph = [[1, 3], [0, 2], [1, 3], [2, 1]]

func visit(graph: [[Int]]) -> [Int] {
    var visited = [Int]()
    var count = graph.count
    var stack = [Int]()
    stack.append(0)
    while !stack.isEmpty {
        let val = stack.removeLast()
        visited.append(val)
        for element in graph[val] {
            
        }
    }
    
    return visited
}

print(visit(graph: graph))




