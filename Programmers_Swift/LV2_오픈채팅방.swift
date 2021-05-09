//
//  LV2_오픈채팅방.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/10.
//

import Foundation

/// [오픈채팅방](https://programmers.co.kr/learn/courses/30/lessons/42888)
/// 결과에는 최종으로 바뀐 유저 아이디만 보이면 되므로 딕셔너리 사용, 유저 아이디를 key로, 닉네임을 value로 사용
struct LV2_오픈채팅방 {
    func solution(_ record:[String]) -> [String] {
        var dic = [String:String]()
        var messages = [String]()
        
        for message in record {
            // 공백 기준으로 문자열 나누기
            let temp = message.split(separator: " ")
            let command = String(temp[0])
            let uid = String(temp[1])
            
            if temp.count - 1 >= 2 {
                let nickname = String(temp[2])
                dic.updateValue(nickname, forKey: uid)
            }
            
            if command == "Enter" || command == "Leave" {
                messages.append("\(command) \(uid)")
            }
        }
        
        var result = [String]()
        for message in messages {
            let temp = message.split(separator: " ")
            let command = String(temp[0])
            let uid = String(temp[1])
            let nickname = dic[uid]!
            var str = "\(nickname)님이 "
            
            if command == "Enter" {
                str += "들어왔습니다."
            } else if command == "Leave" {
                str += "나갔습니다."
            }
            
            result.append(str)
        }
        
        return result
    }
}
