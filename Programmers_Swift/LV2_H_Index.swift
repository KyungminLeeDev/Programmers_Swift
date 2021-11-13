//
//  LV2_H_Index.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import Foundation
import XCTest

/// [H-Index](https://programmers.co.kr/learn/courses/30/lessons/42747)
struct LV2_H_Index {
    func solution(_ citations:[Int]) -> Int {
        let max = citations.max()!
        
        // 최대값부터 0까지 검사
        for h in (0...max).reversed() {
            let hOver = citations.filter{$0 >= h} // h번 이상 인용된 논문
            let hBelow = citations.filter{$0 <= h} // h번 이하 인용된 논문
            
            // h번 이상 인용된 논문이 h편 이상, 나머지 논문이 h번 이하로 인용됐다면
            if hOver.count >= h && hBelow.count <= h {
                return h
            }
        }
        
        return 0
    }
}

class LV2_H_Index_Tests: XCTestCase {
    private struct TestCase {
        let citations: [Int]
        let output: Int
    }
    
    private var sut: LV2_H_Index!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_H_Index()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(citations: [3, 0, 6, 1, 5], output: 3)
        
        // 2. when
        let output = sut.solution(testCase.citations)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
}
