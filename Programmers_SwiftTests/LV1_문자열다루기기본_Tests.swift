//
//  LV1_문자열다루기기본_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import XCTest

class LV1_문자열다루기기본_Tests: XCTestCase {
    private struct TestCase {
        let s: String
        let output: Bool
    }
    
    private var sut: LV1_문자열다루기기본!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_문자열다루기기본()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(s: "a234", output: false)
        
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

    func testCase2() {
        // 1. given
        testCase = TestCase(s: "1234", output: true)
        
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
