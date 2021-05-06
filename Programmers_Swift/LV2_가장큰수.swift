//
//  LV2_가장큰수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation

/// [가장 큰 수](https://programmers.co.kr/learn/courses/30/lessons/42746)
struct LV2_가장큰수 {
    func solution(_ numbers:[Int]) -> String {
        // 문자열로 이어붙였을 때 큰 수 부터 정렬
        let result = numbers.map{ String($0) }.sorted {$0 + $1 > $1 + $0}
        
        if result[0] == "0" {
            return "0"
        }
        
        return result.joined()
    }
}
