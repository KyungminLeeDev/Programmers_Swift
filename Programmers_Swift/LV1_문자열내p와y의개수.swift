//
//  LV1_문자열내p와y의개수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import Foundation

/// [문자열 내 p와 y의 개수](https://programmers.co.kr/learn/courses/30/lessons/12916)
struct LV1_문자열내p와y의개수 {
    func solution(_ s:String) -> Bool {
        let lowerString = s.lowercased()
        var p = 0
        var y = 0
        
        for ch in lowerString {
            if ch == "p" {
                p += 1
            }
            if ch == "y" {
                y += 1
            }
        }
        
        return (p == y) ? true : false
    }
}
