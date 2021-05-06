//
//  LV2_가장큰수_Tests.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import XCTest

class LV2_가장큰수_Tests: XCTestCase {
    private struct TestCase {
        let numbers: [Int]
        let output: String
    }
    
    private var sut: LV2_가장큰수!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_가장큰수()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(numbers: [6, 10, 2], output: "6210")
        
        // 2. when
        let output = sut.solution(testCase.numbers)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(numbers: [3, 30, 34, 5, 9], output: "9534330")
        
        // 2. when
        let output = sut.solution(testCase.numbers)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
