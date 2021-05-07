//
//  LV1_문자열내마음대로정렬하기_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import XCTest

class LV1_문자열내마음대로정렬하기_Tests: XCTestCase {
    private struct TestCase {
        let strings: [String]
        let n: Int
        let output: [String]
    }
    
    private var sut: LV1_문자열내마음대로정렬하기!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_문자열내마음대로정렬하기()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(strings: ["sun", "bed", "car"], n: 1, output: ["car", "bed", "sun"])
        
        // 2. when
        let output = sut.solution(testCase.strings, testCase.n)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

    func testCase2() {
        // 1. given
        testCase = TestCase(strings: ["abce", "abcd", "cdx"], n: 2, output: ["abcd", "abce", "cdx"])
        
        // 2. when
        let output = sut.solution(testCase.strings, testCase.n)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
