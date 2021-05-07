//
//  LV1_서울에서김서방찾기_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import XCTest

class LV1_서울에서김서방찾기_Tests: XCTestCase {
    private struct TestCase {
        let seoul: [String]
        let output: String
    }
    
    private var sut: LV1_서울에서김서방찾기!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_서울에서김서방찾기()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(seoul: ["Jane", "Kim"], output: "김서방은 1에 있다")
        
        // 2. when
        let output = sut.solution(testCase.seoul)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
