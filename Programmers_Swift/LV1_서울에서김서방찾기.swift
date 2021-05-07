//
//  LV1_서울에서김서방찾기.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import Foundation

/// [서울에서 김서방 찾기](https://programmers.co.kr/learn/courses/30/lessons/12919)
struct LV1_서울에서김서방찾기 {
    func solution(_ seoul:[String]) -> String {
        return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다"
    }
}
