//
//  LV1_내적.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/19.
//

import Foundation

/// [내적](https://programmers.co.kr/learn/courses/30/lessons/70128)
struct LV1_내적 {
    func solution(_ a:[Int], _ b:[Int]) -> Int {
        var result = 0
        for i in 0..<a.count {
            result += a[i] * b[i]
        }
        
        return result
    }
}
