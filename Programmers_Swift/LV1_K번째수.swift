//
//  LV1_K번째수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/04/27.
//

import Foundation

/// [K번째수](https://programmers.co.kr/learn/courses/30/lessons/42748)
struct LV1_K번째수 {
    func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        var result = Array(repeating: 0, count: commands.count)
        
        for (index, subArray) in commands.enumerated() {
            let i = subArray[0] - 1
            let j = subArray[1] - 1
            let k = subArray[2] - 1
            let sorted = array[i...j].sorted()
            
            result[index] = sorted[k]
        }
        
        return result
    }
}
