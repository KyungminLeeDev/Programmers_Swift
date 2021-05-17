//
//  LV2_튜플.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/17.
//

import Foundation

/// [튜플](https://programmers.co.kr/learn/courses/30/lessons/64065)
/// 숫자가 중복되는 횟수가 많은 순서대로 배열에 들어감
struct LV2_튜플 {
    func solution(_ s:String) -> [Int] {
        // s에서 숫자만 배열로 뽑기
        let numbers = s.replacingOccurrences(of: ",", with: " ") // 콤마는 빈칸으로 변경
            .replacingOccurrences(of: "{", with: "")    // 괄호는 삭제
            .replacingOccurrences(of: "}", with: "")    // 괄호는 삭제
            .split(separator: " ")  // 빈칸 기준으로 String 나누기
            .compactMap { Int($0) } // 나눈 String을 Int 배열로 변경
        
        // 딕셔너리 [숫자: 중복횟수]
        var dictionary = [Int: Int]()
        // 숫자 중복 횟수 카운팅
        for n in numbers {
            if let value = dictionary[n] {
                dictionary[n] = value + 1
            } else {
                dictionary[n] = 1
            }
        }
        
        // 숫자 중복 횟수(딕셔너리의 밸류)기준으로 내림차순 정렬
        let sorted = dictionary.sorted { $0.value > $1.value }
        // 중복 많은 순서로 정렬된 배열 반환
        return sorted.compactMap { $0.key }
    }
}
