//
//  LV2_뉴스클러스터링_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/12.
//

import XCTest

class LV2_뉴스클러스터링_Tests: XCTestCase {
    private struct TestCase {
        let str1: String
        let str2: String
        let output: Int
    }
    
    private var sut: LV2_뉴스클러스터링!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_뉴스클러스터링()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(str1: "FRANCE", str2: "french", output: 16384)
        
        // 2. when
        let output = sut.solution(testCase.str1, testCase.str2)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
