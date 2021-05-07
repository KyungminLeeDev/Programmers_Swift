//
//  LV1_키패드누르기.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/08.
//

import Foundation

/// [키패드 누르기](https://programmers.co.kr/learn/courses/30/lessons/67256)
struct LV1_키패드누르기 {
    func countKeypad(_ start: Int , _ dest: Int) -> Int {
        // [ 1, 2,  3]
        // [ 4, 5,  6]
        // [ 7, 8,  9]
        // [-1, 0, -2]
        let keypad = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [-1, 0, -2]]
        var startPos = [0, 0]
        var destPos = [0, 0]
        
        // 시작위치와 도착위치 찾기
        for i in 0..<4 {
            for j in 0..<3 {
                if keypad[i][j] == start {
                    startPos[0] = i
                    startPos[1] = j
                }
                if keypad[i][j] == dest {
                    destPos[0] = i
                    destPos[1] = j
                }
            }
        }
        
        var count = 0
        for i in 0...1 {
            // 위치차이 계산
            if startPos[i] > destPos[i] {
                count += startPos[i] - destPos[i]
            } else {
                count += destPos[i] - startPos[i]
            }
        }
        
        return count
    }
    
    func solution(_ numbers:[Int], _ hand:String) -> String {
        var LH = -1
        var RH = -2
        var result = ""
        
        for n in numbers {
            switch n {
            case 1, 4, 7:
                LH = n
                result += "L"
                break
                
            case 3, 6, 9:
                RH = n
                result += "R"
                break
                
            default:
                let countLH = countKeypad(LH, n)
                let countRH = countKeypad(RH, n)
                
                // 같은 거리면 왼손잡이/오른손잡이에 따라 누름
                if countLH == countRH {
                    if hand == "left" {
                        LH = n
                        result += "L"
                    } else {
                        RH = n
                        result += "R"
                    }
                    break
                }
                
                // 가까운 손으로 누름
                if countLH < countRH {
                    LH = n
                    result += "L"
                } else {
                    RH = n
                    result += "R"
                }
                break
            }
        }
        
        return result
    }
}
