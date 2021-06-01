//
//  LV2_3차_압축.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/06/01.
//

import Foundation

/// [압축](https://programmers.co.kr/learn/courses/30/lessons/17684)
struct LV2_압축 {
    struct Dic {
        private var dic = [String: Int]()
        private var index = 0
        
        mutating func add(_ str: String) {
            self.index += 1
            dic[str] = index
        }
        
        // 단어 있으면 단어 출력, 없으면 nil출력
        func find(_ str: String) -> Int? {
            if let index = dic[str] {
                return index
            } else {
                return nil
            }
        }
        
        init() {
            let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            for a in alphabet {
                add(String(a))
            }
        }
    }
    
    
    func solution(_ msg:String) -> [Int] {
        var result = [Int]()
        var dic = Dic()
        
        for startOffset in 0..<msg.count {
            for endOffset in 0..<(msg.count - startOffset) {
                let range = msg.index(msg.startIndex, offsetBy: startOffset)..<msg.index(msg.endIndex, offsetBy: -endOffset)
                let subString = String(msg[range])

                if let index = dic.find(subString) {
                    result.append(index)
                    
                    if endOffset != 0 {
                        let next = String(msg[msg.index(msg.endIndex, offsetBy: -endOffset)])
                        dic.add(subString + next)
                    }
                    
                    break
                }
            }
        }
        
        return result
    }
}
