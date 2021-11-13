//
//  LV2_위장.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation
import XCTest

/// [위장](https://programmers.co.kr/learn/courses/30/lessons/42578)
/// 키 포인트
/// - 의상 종류의 경우의 수는 각 한번씩 입는 경우 + 안입는 경우 이므로 `의상의 수 + 1`
/// - 딕셔너리로 의상 종류별 의상 수를 기록
/// - 전체 경우의 수: 모든 의상 종류의 경우의 수를 곱한 값 - 1(아무것도 안입은 경우)
struct LV2_위장 {
    func solution(_ clothes:[[String]]) -> Int {
        var dic = [String:Int]()
        
        for clothe in clothes {
            // 의상 종류만 사용
            let type = clothe[1]
            
            // 의상 종류를 디셔너리의 키 값으로 해서 종류별 의상 수 기록
            if let count = dic[type] {
                dic[type] = count + 1
            } else {
                dic[type] = 1
            }
        }
        
        var result = 1
        // 모든 경우의 수 곱하기
        for (_, v) in dic {
            result *= (v + 1) // 의상 종류의 수 + 안입는 경우 1
        }
        
        // 모든 경우의 수에서 아무것도 안입는 경우 1 빼기
        return result - 1
    }
}

class LV2_위장_Tests: XCTestCase {
    private struct TestCase {
        let clothes: [[String]]
        let output: Int
    }
    
    private var sut: LV2_위장!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_위장()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(clothes: [["yellowhat", "headgear"],
                                      ["bluesunglasses", "eyewear"],
                                      ["green_turban", "headgear"]],
                            output: 5)
        
        // 2. when
        let output = sut.solution(testCase.clothes)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(clothes: [["crowmask", "face"],
                                      ["bluesunglasses", "face"],
                                      ["smoky_makeup", "face"]],
                            output: 3)
        
        // 2. when
        let output = sut.solution(testCase.clothes)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
