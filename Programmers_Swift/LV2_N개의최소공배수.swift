//
//  LV2_N개의최소공배수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/11.
//

import Foundation

/// [N개의 최소공배수](https://programmers.co.kr/learn/courses/30/lessons/12953)
/// 최대공약수/최소공배수 공식으로 푸는 방법이 있고, 예전에 그렇게 풀었지만
/// 다시보니 아직 이해 되지않아서 공식을 사용하지 않고 풀어봤다.
struct LV2_N개의최소공배수 {
    func lcm(_ n1: Int, _ n2: Int) -> Int {
        let a: Int = (n1 > n2) ? n1 : n2 // 큰 수
        let b: Int = (n1 > n2) ? n2 : n1 // 작은 수
        var i = 0
        
        while true {
            i += 1
            let n = (a * i) // 큰수의 배수
            // 작은 수로 나누어지는 큰수의 배수 == 최소공배수
            if  n % b == 0 {
                return n
            }
        }
    }
    
    func solution(_ arr:[Int]) -> Int {
        var temp = arr.sorted()
        var n1 = temp.removeFirst()
        var n2: Int
        
        // 배열 앞부터 끝까지 두수의 최소공배수를 계산
        while !temp.isEmpty {
            n2 = temp.removeFirst()
            n1 = lcm(n1, n2)
        }
        
        return n1
    }
}
