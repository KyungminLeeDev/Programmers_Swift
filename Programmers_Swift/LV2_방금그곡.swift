//
//  LV2_방금그곡.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/06/08.
//

import Foundation

/// [방금그곡](https://programmers.co.kr/learn/courses/30/lessons/17683)
struct LV2_방금그곡 {
    func stringToArray(_ str: String) -> [String] {
        var result = [String]()
        
        for c in str {
            let ch = String(c)
            
            if ch == "#" {
                if let index = result.lastIndex(of: ch) {
                    result[index] += "#"
                }
            } else {
                result.append(ch)
            }
        }
        
        return result
    }
    
    //["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]
    func musicinfo(_ info: [String]) -> [String] {
        var result = [String]()
        
        for i in 0..<info.count {
            let index = i % 4
            switch index {
            case 0:
                break
            case 1:
                break
            case 2:
                break
            case 3:
                break
            default:
                break
            }
            
        }
        
        
        return result
    }
    
    // ["12:00,12:14,HELLO,CDEFGAB", "13:00,13:05,WORLD,ABCDEF"]
    func solution(_ m:String, _ musicinfos:[String]) -> String {
        return "Hello"
    }
}
