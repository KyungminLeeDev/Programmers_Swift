//
//  LV1_모의고사_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/04.
//

import XCTest

class LV1_모의고사_Tests: XCTestCase {
    private struct TestCase {
        let answers: [Int]
        let output: [Int]
    }
    
    private var sut: LV1_모의고사!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_모의고사()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // 1. given
        testCase = TestCase(answers: [1,2,3,4,5], output: [1])
        
        // 2. when
        let output = sut.solution(testCase.answers)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(answers: [1,3,2,4,2], output: [1,2,3])
        
        // 2. when
        let output = sut.solution(testCase.answers)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
