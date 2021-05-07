//
//  LV1_크레인인형뽑기게임.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import Foundation

/// [크레인 인형뽑기 게임](https://programmers.co.kr/learn/courses/30/lessons/64061)
struct LV1_크레인인형뽑기게임 {
    // [0,0,0,0,0] 0
    // [0,0,1,0,3] 1
    // [0,2,5,0,1] 2
    // [4,2,4,4,2] 3
    // [3,4,1,3,1] 4
    //  0,1,2,3,4
    func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
        var temp = board
        var basket = [Int]()
        var count = 0
        
        for move in moves {
            let location = move - 1
            for (i, _) in temp.enumerated() {
                let catched = temp[i][location] // 인형 잡기
                temp[i][location] = 0 // 해당 위치 0으로
                if catched != 0 {
                    // 바스켓에 넣기
                    if let last = basket.last {
                        // 바스켓 맨위에 인형과 잡아온 인형이 같으면 터짐
                        if last == catched {
                            count += 2
                            _ = basket.popLast()
                        } else {
                            // 다르면 그냥 쌓음
                            basket.append(catched)
                        }
                    } else {
                        // 바스켓이 비어있다면 그냥 쌓음
                        basket.append(catched)
                    }
                    break
                }
            }
        }
        
        return count
    }
}
