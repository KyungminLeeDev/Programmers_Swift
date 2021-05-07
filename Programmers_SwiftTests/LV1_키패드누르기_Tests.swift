//
//  LV1_키패드누르기_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/08.
//

import XCTest

class LV1_키패드누르기_Tests: XCTestCase {
    private struct TestCase {
        let numbers: [Int]
        let hand: String
        let output: String
    }
    
    private var sut: LV1_키패드누르기!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_키패드누르기()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(numbers: [1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5],
                            hand: "right",
                            output: "LRLLLRLLRRL")
        
        // 2. when
        let output = sut.solution(testCase.numbers, testCase.hand)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(numbers: [7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2],
                            hand: "left",
                            output: "LRLLRRLLLRR")
        
        // 2. when
        let output = sut.solution(testCase.numbers, testCase.hand)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase3() {
        // 1. given
        testCase = TestCase(numbers: [1, 2, 3, 4, 5, 6, 7, 8, 9, 0],
                            hand: "right",
                            output: "LLRLLRLLRL")
        
        // 2. when
        let output = sut.solution(testCase.numbers, testCase.hand)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
