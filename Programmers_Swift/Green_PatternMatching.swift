//
//  Green_PatternMatching.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/06/02.
//

import Foundation

/// [Green_PatternMatching](./Green_PatternMatching.md)
struct Green_PatternMatching {
    // "xyxy" -> [0,1,0,1]
    func makePattern(_ string: String) -> [Int] {
        var dic = [String: Int]()
        var result = [Int]()
        var num = 0
        
        for c in string {
            let str = String(c)
            
            // 딕셔너리에 패턴값이 있으면 패턴값을 result로 바로 넣어주고
            if let pattern = dic[str] {
                result.append(pattern)
            } else { // 아니면 딕셔너리에 패턴값 매칭 후 result로 넣어주기
                dic[str] = num
                result.append(num)
                
                num += 1
            }
        }
        
        return result
    }
    
    // "one two two one" -> [0,1,0,1]
    func makePatternWithData(_ string: String) -> [Int] {
        var dic = [String: Int]()
        var result = [Int]()
        var num = 0
        
        let split = string.split(separator: " ")
        
        for c in split {
            let str = String(c)
            
            if let pattern = dic[str] {
                result.append(pattern)
            } else {
                dic[str] = num
                result.append(num)
                
                num += 1
            }
        }
        
        return result
    }
    
    func solution(_ pattern: String, _ data: String) -> Bool {
        let p = makePattern(pattern)
        let d = makePatternWithData(data)
        
        return p == d
    }
}
