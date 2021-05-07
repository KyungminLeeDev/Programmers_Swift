//
//  LV1_문자열내p와y의개수_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import XCTest

class LV1_문자열내p와y의개수_Tests: XCTestCase {
    private struct TestCase {
        let s: String
        let output: Bool
    }
    
    private var sut: LV1_문자열내p와y의개수!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_문자열내p와y의개수()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(s: "pPoooyY", output: true)
        
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(s: "Pyy", output: false)
        
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
