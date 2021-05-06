//
//  LV2_프린터_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import XCTest

class LV2_프린터_Tests: XCTestCase {
    private struct TestCase {
        let priorities: [Int]
        let location: Int
        let output: Int
    }
    
    private var sut: LV2_프린터!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_프린터()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(priorities: [2, 1, 3, 2], location: 2, output: 1)
        
        // 2. when
        let output = sut.solution(testCase.priorities, testCase.location)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(priorities: [1, 1, 9, 1, 1, 1], location: 0, output: 5)
        
        // 2. when
        let output = sut.solution(testCase.priorities, testCase.location)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
