//
//  LV2_큰수만들기_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/06/10.
//

import XCTest

class LV2_큰수만들기_Tests: XCTestCase {
    private struct TestCase {
        let number: String
        let k: Int
        let output: String
    }
    
    private var sut: LV2_큰수만들기!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_큰수만들기()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(number: "1924",
                            k: 2,
                            output: "94")
        
        // 2. when
        let output = sut.solution(testCase.number,
                                  testCase.k)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(number: "1231234",
                            k: 3,
                            output: "3234")
        
        // 2. when
        let output = sut.solution(testCase.number,
                                  testCase.k)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase3() {
        // 1. given
        testCase = TestCase(number: "4177252841",
                            k: 4,
                            output: "775841")
        
        // 2. when
        let output = sut.solution(testCase.number,
                                  testCase.k)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
