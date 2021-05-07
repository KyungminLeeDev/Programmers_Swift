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
        var arr = strings.sorted() // 미리 사전순으로 정렬
        
        // n번째 글자 기준으로 정렬
        for i in 0..<arr.count {
            for j in 0..<arr.count - (i + 1) {
                if Array(arr[j])[n] > Array(arr[j + 1])[n] {
                    arr.swapAt(j, j + 1)
                }
            }
        }
        
        return arr
    }
}
