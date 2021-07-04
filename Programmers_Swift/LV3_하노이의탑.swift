//
//  LV3_하노이의탑.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/06/14.
//

import Foundation

/// [하노이의 탑](https://programmers.co.kr/learn/courses/30/lessons/12946)
struct LV3_하노이의탑 {
    func solution(_ n:Int) -> [[Int]] {
        var stack = Array(repeating: [Int](), count: 3)
        
        for i in (1...n).reversed() {
            stack[0].append(i)
        }
        
        while stack[2].count < n {
            if let pop = stack[0].popLast() {
                guard let last = stack[2].last else {
                    
                }
                
            }
        }
        
        return [ [1,2], [1,3], [2,3] ]
    }
}
