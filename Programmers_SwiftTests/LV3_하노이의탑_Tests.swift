//
//  LV3_하노이의탑_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/06/14.
//

import XCTest

class LV3_하노이의탑_Tests: XCTestCase {
    private struct TestCase {
        let n: Int
        let output: [[Int]]
    }
    
    private var sut: LV3_하노이의탑!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV3_하노이의탑()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(n: 2, output: [[1,2], [1,3], [2,3]])
        
        // 2. when
        let output = sut.solution(testCase.n)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
