//
//  LV1_문자열내림차순으로배치하기.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import Foundation

/// [문자열 내림차순으로 배치하기](https://programmers.co.kr/learn/courses/30/lessons/12917)
struct LV1_문자열내림차순으로배치하기 {
    func solution(_ s:String) -> String {
        String(s.sorted(by: >))
    }
}
