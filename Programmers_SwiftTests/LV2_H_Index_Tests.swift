//
//  LV2_H_Index_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import XCTest

class LV2_H_Index_Tests: XCTestCase {
    private struct TestCase {
        let citations: [Int]
        let output: Int
    }
    
    private var sut: LV2_H_Index!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_H_Index()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(citations: [3, 0, 6, 1, 5], output: 3)
        
        // 2. when
        let output = sut.solution(testCase.citations)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
