//
//  LV1_문자열다루기기본.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import Foundation

/// [문자열 다루기 기본](https://programmers.co.kr/learn/courses/30/lessons/12918)
struct LV1_문자열다루기기본 {
    func solution(_ s:String) -> Bool {
        let count = s.count
        guard count == 4 || count == 6 else { return false }
        
        if let _ = Int(s) {
            return true
        } else {
            return false
        }
    }
}
