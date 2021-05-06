//
//  LV1_가운데글자가져오기_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/04/23.
//

import XCTest
@testable import Programmers_Swift

class LV1_가운데글자가져오기_Tests: XCTestCase {
    private struct TestCase {
        let s: String
        let output: String
    }
    
    private var sut: LV1_가운데글자가져오기!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_가운데글자가져오기()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
        
    func testCase1() {
        // 1. given
        testCase = TestCase(s: "abcde", output: "c")
        
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(s: "qwer", output: "we")
        
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
