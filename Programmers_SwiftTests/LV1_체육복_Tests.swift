//
//  LV1_체육복_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import XCTest

class LV1_체육복_Tests: XCTestCase {
    private struct TestCase {
        let n: Int
        let lost: [Int]
        let reserve: [Int]
        let output: Int
    }
    
    private var sut: LV1_체육복!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_체육복()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(n:5, lost: [2, 4], reserve: [1, 3, 5], output: 5)
        
        // 2. when
        let output = sut.solution(testCase.n, testCase.lost, testCase.reserve)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(n:5, lost: [2, 4], reserve: [3], output: 4)
        
        // 2. when
        let output = sut.solution(testCase.n, testCase.lost, testCase.reserve)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase3() {
        // 1. given
        testCase = TestCase(n:3, lost: [3], reserve: [1], output: 2)
        
        // 2. when
        let output = sut.solution(testCase.n, testCase.lost, testCase.reserve)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
