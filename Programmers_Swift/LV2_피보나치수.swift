//
//  LV2_피보나치수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/20.
//

import Foundation

/// [피보나치 수](https://programmers.co.kr/learn/courses/30/lessons/12945)
struct LV2_피보나치수 {
    func solution(_ n:Int) -> Int {
        var fibo = [0, 1]
        var result = 0
        
        for _ in 1..<n {
            result = (fibo[0] + fibo[1]) % 1234567
            fibo[0] = fibo[1]
            fibo[1] = result
        }
        
        return result
    }
}
