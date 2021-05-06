//
//  LV1_가운데글자가져오기.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/04/23.
//

import Foundation

/// [가운데 글자 가져오기](https://programmers.co.kr/learn/courses/30/lessons/12903)
struct LV1_가운데글자가져오기 {
    /// - Parameter s: 단어 (길이 1이상, 100이하)
    /// - Returns: 단어의 가운데 글자, 짝수면 두글자
    func solution(_ s:String) -> String {
        var result = ""
        let id = s.count / 2
        
        for (index, value) in s.enumerated() {
            if (s.count % 2) == 0 {
                // 짝수
                if index == id - 1 || index == id {
                    result += String(value)
                }
            } else {
                if index == id {
                    result += String(value)
                }
            }
        }
        
        return result
    }
}
