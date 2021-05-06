//
//  LV2_위장.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/06.
//

import XCTest

class LV2_위장_Tests: XCTestCase {
    private struct TestCase {
        let clothes: [[String]]
        let output: Int
    }
    
    private var sut: LV2_위장!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_위장()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(clothes: [["yellowhat", "headgear"], ["bluesunglasses", "eyewear"], ["green_turban", "headgear"]], output: 5)
        
        // 2. when
        let output = sut.solution(testCase.clothes)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(clothes: [["crowmask", "face"], ["bluesunglasses", "face"], ["smoky_makeup", "face"]], output: 3)
        
        // 2. when
        let output = sut.solution(testCase.clothes)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }

}
