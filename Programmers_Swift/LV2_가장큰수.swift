//
//  LV2_가장큰수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation
import XCTest

/// [가장 큰 수](https://programmers.co.kr/learn/courses/30/lessons/42746)
struct LV2_가장큰수 {
    func solution(_ numbers:[Int]) -> String {
        // 문자열로 이어붙였을 때 큰 수 부터 정렬
        let result = numbers.map{ String($0) }.sorted {$0 + $1 > $1 + $0}
        
        if result[0] == "0" {
            return "0"
        }
        
        return result.joined()
    }
}

class LV2_가장큰수_Tests: XCTestCase {
    private struct TestCase {
        let numbers: [Int]
        let output: String
    }
    
    private var sut: LV2_가장큰수!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_가장큰수()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(numbers: [6, 10, 2], output: "6210")
        
        // 2. when
        let output = sut.solution(testCase.numbers)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(numbers: [3, 30, 34, 5, 9], output: "9534330")
        
        // 2. when
        let output = sut.solution(testCase.numbers)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
