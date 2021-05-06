//
//  LV2_기능개발_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import XCTest

class LV2_기능개발_Tests: XCTestCase {
    private struct TestCase {
        let progresses: [Int]
        let speeds: [Int]
        let output: [Int]
    }
    
    private var sut: LV2_기능개발!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_기능개발()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(progresses: [93, 30, 55], speeds: [1, 30, 5], output: [2, 1])
        
        // 2. when
        let output = sut.solution(testCase.progresses, testCase.speeds)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(progresses: [95, 90, 99, 99, 80, 99], speeds: [1, 1, 1, 1, 1, 1], output: [1, 3, 2])
        
        // 2. when
        let output = sut.solution(testCase.progresses, testCase.speeds)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
