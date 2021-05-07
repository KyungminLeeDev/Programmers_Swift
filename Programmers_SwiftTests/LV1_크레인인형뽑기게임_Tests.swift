//
//  LV1_크레인인형뽑기게임_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/07.
//

import XCTest

class LV1_크레인인형뽑기게임_Tests: XCTestCase {
    private struct TestCase {
        let board: [[Int]]
        let moves: [Int]
        let output: Int
    }
    
    private var sut: LV1_크레인인형뽑기게임!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV1_크레인인형뽑기게임()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(board: [[0,0,0,0,0],[0,0,1,0,3],[0,2,5,0,1],[4,2,4,4,2],[3,5,1,3,1]],
                            moves: [1,5,3,5,1,2,1,4],
                            output: 4)
        
        // 2. when
        let output = sut.solution(testCase.board, testCase.moves)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
