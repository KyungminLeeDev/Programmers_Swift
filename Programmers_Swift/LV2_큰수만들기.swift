//
//  LV2_큰수만들기.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/06/10.
//

import Foundation


/// [큰 수 만들기](https://programmers.co.kr/learn/courses/30/lessons/42883)
// 스택 활용...
// 앞이 뒤보다 작다면 앞을 삭제
struct LV2_큰수만들기 {
    func solution(_ number:String, _ k:Int) -> String {
        //var numbers = number.compactMap{Int(String($0))}
        var stack = ""
        var count = 0
        
        for c in number {
            guard let n = Int(String(c)) else {
                continue
            }
            
            while count < k {
                guard let last = stack.last,
                      let lastN = Int(String(last)) else {
                    stack.append(c)
                    break
                }
                
                if lastN < n {
                    stack.removeLast()
                    count += 1
                    continue
                } else {
                    stack.append(c)
                }
            }
            stack.append(c)
        }

        return stack
    }
    
}
