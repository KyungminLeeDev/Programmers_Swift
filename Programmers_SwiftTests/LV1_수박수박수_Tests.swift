//
//  LV1_수박수박수_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/08.
//

import XCTest

class LV1_수박수박수_Tests: XCTestCase {
    private struct TestCase {
        let n: Int
        let output: String
    }
    
    private var sut: LV1_수박수박수!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_수박수박수()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(n: 3, output: "수박수")
        
        // 2. when
        let output = sut.solution(testCase.n)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(n: 4, output: "수박수박")
        
        // 2. when
        let output = sut.solution(testCase.n)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
