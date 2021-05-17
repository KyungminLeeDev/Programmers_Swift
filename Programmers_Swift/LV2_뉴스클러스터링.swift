//
//  LV2_뉴스클러스터링.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/12.
//

import Foundation

/// [뉴스 클러스터링](https://programmers.co.kr/learn/courses/30/lessons/17677)
struct LV2_뉴스클러스터링 {
    func chopString(_ str: String) -> [String] {
        let arr = Array(str.uppercased())
        var result = [String]()
        
        for i in 0..<(arr.count - 1) {
            let first = arr[i]
            let second = arr[i + 1]
            if first.isLetter && second.isLetter {
                let word = "\(first)" + "\(second)"
                result.append(word)
            }
        }
        
        return result
    }
    
    func intersecion(_ a: [String], _ b: [String]) -> [String] {
        var result = [String]()
        for el in a {
            if let _ = b.firstIndex(of: el) {
                result.append(el)
            }
        }
        
        return result
    }
    
    func union(_ a: [String], _ b: [String]) -> [String] {
        let result = a + b
        
        return result
    }
    
    
    func solution(_ str1:String, _ str2:String) -> Int {
//        let a = chopString(str1)
//        let b = chopString(str2)
//        let inter = intersecion(a, b).count
//        let uni = union(a, b).count
//
//        let result = Int((inter / uni) * 65536)
        
        return 1
    }
}
