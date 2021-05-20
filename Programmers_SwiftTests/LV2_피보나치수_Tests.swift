//
//  LV2_피보나치수_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/20.
//

import XCTest

class LV2_피보나치수_Tests: XCTestCase {
    private struct TestCase {
        let n: Int
        let output: Int
    }
    
    private var sut: LV2_피보나치수!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_피보나치수()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(n: 3, output: 2)
        
        // 2. when
        let output = sut.solution(testCase.n)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

    func testCase2() {
        // 1. given
        testCase = TestCase(n: 5, output: 5)
        
        // 2. when
        let output = sut.solution(testCase.n)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
