//
//  LV1_음양더하기_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/18.
//

import XCTest

class LV1_음양더하기_Tests: XCTestCase {
    private struct TestCase {
        let absolutes: [Int]
        let signs: [Bool]
        let output: Int
    }
    
    private var sut: LV1_음양더하기!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_음양더하기()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(absolutes: [4,7,12],
                            signs: [true,false,true],
                            output: 9)
        
        // 2. when
        let output = sut.solution(testCase.absolutes, testCase.signs)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(absolutes: [1,2,3],
                            signs: [false,false,true],
                            output: 0)
        
        // 2. when
        let output = sut.solution(testCase.absolutes, testCase.signs)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
