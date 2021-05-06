//
//  LV1_체육복.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation

/// [체육복](https://programmers.co.kr/learn/courses/30/lessons/42862)
struct LV1_체육복 {
    func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
        var suits = Array(repeating: 1, count: n) // 모두 체육복 1개씩 있다고 가정
        
        // 도난당한 학생 빼기
        for number in lost {
            suits[number - 1] -= 1
        }
        
        // 여분 가져온 학생 추가
        for number in reserve {
            suits[number - 1] += 1
        }
        
        
        
        // 앞뒤에서 받기
        for (i, v) in suits.enumerated() {
            if v == 0 {
                if i > 0 {
                    if suits[i - 1] > 1 {
                        suits[i - 1] -= 1
                        suits[i] = 1
                    }
                }
                if i < n - 1 {
                    if suits[i + 1] > 1 {
                        suits[i + 1] -= 1
                        suits[i] = 1
                    }
                }
            }
        }
        
        return suits.filter {$0 >= 1}.count
    }
}
