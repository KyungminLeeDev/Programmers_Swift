//
//  LV1_모의고사.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/04.
//

import Foundation

/// [모의고사](https://programmers.co.kr/learn/courses/30/lessons/42840)
struct LV1_모의고사 {
    func solution(_ answers:[Int]) -> [Int] {
        let students = [[1, 2, 3, 4, 5],
                        [2, 1, 2, 3, 2, 4, 2, 5],
                        [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]]
        var scores = Array(repeating: 0, count: 3)
        
        // 채점
        for (index, answer) in answers.enumerated() {
            for (studentNum, routine) in students.enumerated() {
                let count = routine.count
                
                if answer == routine[index % count] {
                    scores[studentNum] += 1
                }
            }
        }
        
        // 고득점 찾기
        let maxScore = scores.max()
        var result = [Int]()
        for (index, score) in scores.enumerated() {
            if score == maxScore {
                result.append(index + 1)
            }
        }
        
        return result.sorted()
    }
}
