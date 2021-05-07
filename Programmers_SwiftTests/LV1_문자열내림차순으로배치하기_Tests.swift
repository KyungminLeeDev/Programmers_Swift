//
//  LV1_문자열내림차순으로배치하기_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import XCTest

class LV1_문자열내림차순으로배치하기_Tests: XCTestCase {
    private struct TestCase {
        let s: String
        let output: String
    }
    
    private var sut: LV1_문자열내림차순으로배치하기!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_문자열내림차순으로배치하기()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(s: "Zbcdefg", output: "gfedcbZ")
        
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
