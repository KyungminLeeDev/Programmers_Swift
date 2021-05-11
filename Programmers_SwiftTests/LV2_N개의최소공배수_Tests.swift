//
//  LV2_N개의최소공배수_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/11.
//

import XCTest

class LV2_N개의최소공배수_Tests: XCTestCase {
    private struct TestCase {
        let arr: [Int]
        let output: Int
    }
    
    private var sut: LV2_N개의최소공배수!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_N개의최소공배수()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(arr: [2,6,8,14], output: 168)
        
        // 2. when
        let output = sut.solution(testCase.arr)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(arr: [1,2,3], output: 6)
        
        // 2. when
        let output = sut.solution(testCase.arr)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
