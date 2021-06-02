//
//  Green_PatternMatching_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/06/02.
//

import XCTest

class Green_PatternMatching_Tests: XCTestCase {
    private struct TestCase {
        let pattern: String
        let data: String
        let output: Bool
    }
    
    private var sut: Green_PatternMatching!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Green_PatternMatching()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(pattern: "abbaa",
                            data: "dog cat cat dog dog",
                            output: true)
        
        // 2. when
        let output = sut.solution(testCase.pattern, testCase.data)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(pattern: "xyxy",
                            data: "one two two one",
                            output: false)
        
        // 2. when
        let output = sut.solution(testCase.pattern, testCase.data)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase3() {
        // 1. given
        testCase = TestCase(pattern: "cbac",
                            data: "dog cat bird dog",
                            output: true)
        
        // 2. when
        let output = sut.solution(testCase.pattern, testCase.data)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
