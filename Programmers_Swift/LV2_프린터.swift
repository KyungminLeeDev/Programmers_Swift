//
//  LV2_프린터.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation

struct LV2_프린터 {
    func solution(_ priorities:[Int], _ location:Int) -> Int {
        var queue = Array(repeating: 0, count: priorities.count)
        var docs = priorities
        
        // 알고자하는 문서위치를 1로 표시
        queue[location] = 1
        
        var count = 0
        while !docs.isEmpty {
            let max = docs.max()!
            let doc = docs.removeFirst()
            let q = queue.removeFirst()
            
            if doc == max {
                // 중요도 최대값이면
                // - 출력 순서 카운트
                count += 1
                // - 몇 번째인지 출력
                if q == 1 {
                    return count
                }
            } else {
                // 중요도 최대값 아니면 다시 큐에 넣기
                docs.append(doc)
                queue.append(q)
            }
        }
        
        return 0
    }
}
