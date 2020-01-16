//
//  main.swift
//  HelloSwift
//
//  Created by muhlenXi on 2019/9/19.
//  Copyright © 2019 muhlenXi. All rights reserved.
//

import Foundation


// 47
func permuteUnique(_ nums: [Int]) -> [[Int]] {
    var track = [Int]()
    var result = [[Int]]()
    backtrack(nums, &track, &result)
    return result
}

func backtrack(_ nums: [Int], _ tracks: inout [Int], _ result: inout [[Int]]) {
    if nums.count == tracks.count {
        result.append(tracks)
        return
    }
    for element in nums {
        if tracks.contains(element) {
            continue
        }
        
        tracks.append(element)
        backtrack(nums, &tracks, &result)
        tracks.removeLast()
    }
}

let array = [1,1,2]
print(permuteUnique(array))




func queen(_ n: Int) {
    var board = [[String]]()
    for _ in 0..<n {
        board.append(Array(repeating: ".", count: n))
    }
    bt(&board, 0)
    print(board)
}

func bt(_ board: inout [[String]], _ row: Int) {
    if row == board.count {
        print(board)
        return
    }
    
    let columns = board[row].count
    for col in 0..<columns {
        if isValid(board, row, col) == false {
            continue
        }
        
        board[row][col] = "Q"
        bt(&board, row+1)
        board[row][col] = "."
    }
}

func isValid(_ board: [[String]], _ row: Int, _ cloumn: Int) -> Bool {
    let length = board.count
    for r in 0..<length {
        if board[r][cloumn] == "Q" {
            return false
        }
    }
    
    var i = row - 1
    var j = cloumn + 1
    while i >= 0 && j < length {
        if board[i][j] == "Q" {
            return false
        }
        i -= 1
        j += 1
    }
    
    var ii = row - 1
    var jj = cloumn - 1
    while ii >= 0 && jj >= 0 {
        if board[ii][jj] == "Q" {
            return false
        }
        ii -= 1
        jj -= 1
    }
    
    return true
}

let n = 4
//queen(n)


































let t1: TreeNode? = TreeNode(1)
let t2: TreeNode? = TreeNode(2)
let t3: TreeNode? = TreeNode(3)
let t4: TreeNode? = TreeNode(4)
let t5: TreeNode? = TreeNode(5)
let t6: TreeNode? = TreeNode(6)
let t7: TreeNode? = TreeNode(7)
let t8: TreeNode? = TreeNode(8)
let t9: TreeNode? = TreeNode(9)
let t10: TreeNode? = TreeNode(10)
let t11: TreeNode? = TreeNode(11)
let t12: TreeNode? = TreeNode(12)
let t13: TreeNode? = TreeNode(13)
let t14: TreeNode? = TreeNode(14)
let t15: TreeNode? = TreeNode(15)


t1?.left = t2
t1?.right = t3
t2?.left = t4
t2?.right = t5
t3?.left = t6
t3?.right = t7
t4?.left = t8
t4?.right = t9
t5?.left = t10
t5?.right = t11
t6?.left = t12
t6?.right = t13
t7?.left = t14
t7?.right = t15




















