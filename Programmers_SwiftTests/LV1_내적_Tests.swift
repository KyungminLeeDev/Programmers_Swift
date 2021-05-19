//
//  LV1_내적_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/19.
//

import XCTest

class LV1_내적_Tests: XCTestCase {
    private struct TestCase {
        let a: [Int]
        let b: [Int]
        let output: Int
    }
    
    private var sut: LV1_내적!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_내적()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(a: [1,2,3,4],
                            b: [-3,-1,0,2],
                            output: 3)
        
        // 2. when
        let output = sut.solution(testCase.a, testCase.b)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(a: [-1,0,1],
                            b: [1,0,-1],
                            output: -2)
        
        // 2. when
        let output = sut.solution(testCase.a, testCase.b)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
