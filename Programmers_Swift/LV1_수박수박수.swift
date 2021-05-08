//
//  LV1_수박수박수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/08.
//

import Foundation

/// [수박수박수박수박수박수?](https://programmers.co.kr/learn/courses/30/lessons/12922)
struct LV1_수박수박수 {
    func solution(_ n:Int) -> String {
        var result = ""
        for i in 0..<n {
            if i % 2 == 0 {
                result += "수"
            } else {
                result += "박"
            }
        }
        
        return result
    }
}
