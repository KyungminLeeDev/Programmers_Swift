//
//  LV1_K번째수_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/04/27.
//

import XCTest

class LV1_K번째수_Tests: XCTestCase {
    private struct TestCase {
        let array: [Int]
        let commands: [[Int]]
        let output: [Int]
    }
    
    private var sut: LV1_K번째수!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_K번째수()
    }

    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }

    func testCase1() {
        // 1. given
        testCase = TestCase(array: [1, 5, 2, 6, 3, 7, 4], commands: [[2, 5, 3], [4, 4, 1], [1, 7, 3]], output: [5, 6, 3])
        
        // 2. when
        let output = sut.solution(testCase.array, testCase.commands)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
