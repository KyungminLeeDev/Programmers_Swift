//
//  LV2_오픈채팅방_Tests.swift
//  Programmers_SwiftTests
//
//  Created by Kyungmin Lee on 2021/05/10.
//

import XCTest

class LV2_오픈채팅방_Tests: XCTestCase {
    private struct TestCase {
        let record: [String]
        let output: [String]
    }
    
    private var sut: LV2_오픈채팅방!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_오픈채팅방()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(record: ["Enter uid1234 Muzi", "Enter uid4567 Prodo","Leave uid1234","Enter uid1234 Prodo","Change uid4567 Ryan"],
                            output: ["Prodo님이 들어왔습니다.", "Ryan님이 들어왔습니다.", "Prodo님이 나갔습니다.", "Prodo님이 들어왔습니다."])
        
        // 2. when
        let output = sut.solution(testCase.record)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
