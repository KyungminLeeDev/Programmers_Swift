//
//  LV1_음양더하기.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/18.
//

import Foundation

/// [음양 더하기](https://programmers.co.kr/learn/courses/30/lessons/76501)
struct LV1_음양더하기 {
    func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
        var sum = 0
        for i in 0..<signs.count {
            sum += signs[i] ? absolutes[i] : -absolutes[i]
        }
        
        return sum
    }
}
