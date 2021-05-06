//
//  LV2_다리를지나는트럭_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/04/24.
//

import XCTest

class LV2_다리를지나는트럭_Tests: XCTestCase {
    private struct TestCase {
        let bridge_length: Int
        let weight: Int
        let truck_weights: [Int]
        let output: Int
    }
    
    private var sut: LV2_다리를지나는트럭!
    private var testCase: TestCase!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_다리를지나는트럭()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(bridge_length: 2, weight: 10, truck_weights: [7,4,5,6], output: 8)
        
        // 2. when
        let output = sut.solution(testCase.bridge_length, testCase.weight, testCase.truck_weights)

        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(bridge_length: 100, weight: 100, truck_weights: [10], output: 101)
        
        // 2. when
        let output = sut.solution(testCase.bridge_length, testCase.weight, testCase.truck_weights)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase3() {
        // 1. given
        testCase = TestCase(bridge_length: 100, weight: 100, truck_weights: [10,10,10,10,10,10,10,10,10,10], output: 110)
        
        // 2. when
        let output = sut.solution(testCase.bridge_length, testCase.weight, testCase.truck_weights)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
