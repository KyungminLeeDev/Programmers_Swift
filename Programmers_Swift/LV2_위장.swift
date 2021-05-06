//
//  LV2_위장.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation

/// [위장](https://programmers.co.kr/learn/courses/30/lessons/42578
struct LV2_위장 {
    func solution(_ clothes:[[String]]) -> Int {
        var dic = [String: Int]()
        
        for cloth in clothes {
            // 의상 종류를 딕셔너리의 key로 사용
            let key = cloth[1]
            
            // 이미 의상 종류가 있으면 +1
            if let value = dic[key] {
                dic[key] = value + 1
            } else {
                // 아니면 1로 셋팅
                dic[key] = 1
            }
        }
        
        var result = 1
        // 종류별 경우의 수는 의상 종류의수 + 1이다 (의상의 수 + 안입는 경우)
        // 전체 경우의 수는 모든 경우의 수를 곱함
        for (_, v) in dic {
            result *= (v + 1)
        }
        
        // 아무것도 입지 않는 경우는 빼기
        return result - 1
    }
}
