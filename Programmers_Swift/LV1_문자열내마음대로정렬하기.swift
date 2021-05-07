//
//  LV1_문자열내마음대로정렬하기.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import Foundation

/// [문자열 내 마음대로 정렬하기]
struct LV1_문자열내마음대로정렬하기 {
    func solution(_ strings:[String], _ n:Int) -> [String] {
        let arr = strings.sorted() // 미리 사전순으로 정렬
    
        // n번째 문자 기준으로 정렬
        return arr.sorted {Array($0)[n] < Array($1)[n]}
    }
}
