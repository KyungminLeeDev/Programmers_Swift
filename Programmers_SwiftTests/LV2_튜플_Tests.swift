//
//  LV2_튜플_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/17.
//

import XCTest

class LV2_튜플_Tests: XCTestCase {
    private struct TestCase {
        let s: String
        let output: [Int]
    }
    
    private var sut: LV2_튜플!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_튜플()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(s: "{{2},{2,1},{2,1,3},{2,1,3,4}}",
                            output: [2, 1, 3, 4])
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(s: "{{1,2,3},{2,1},{1,2,4,3},{2}}",
                            output: [2, 1, 3, 4])
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase3() {
        // 1. given
        testCase = TestCase(s: "{{20,111},{111}}",
                            output: [111, 20])
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase4() {
        // 1. given
        testCase = TestCase(s: "{{123}}",
                            output: [123])
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase5() {
        // 1. given
        testCase = TestCase(s: "{{4,2,3},{3},{2,3,4,1},{2,3}}",
                            output: [3, 2, 4, 1])
        // 2. when
        let output = sut.solution(testCase.s)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
