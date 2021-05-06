//
//  LV2_기능개발.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation

/// [기능개발](https://programmers.co.kr/learn/courses/30/lessons/42586)
struct LV2_기능개발 {
    func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
        var tasks = progresses
        var days = speeds
        var results = [Int]()
        
        while !tasks.isEmpty {
            // 하루 진도율 더하기
            for i in 0..<tasks.count {
                tasks[i] += days[i]
            }
            
            var count = 0
            while !tasks.isEmpty {
                if tasks[0] >= 100 {
                    tasks.removeFirst()
                    days.removeFirst()
                    count += 1
                } else {
                    break
                }
            }
            if count > 0 {
                results.append(count)
            }
        }
        
        return results
    }
}
