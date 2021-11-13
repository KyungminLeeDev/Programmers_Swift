//
//  LV1_K번째수.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/04/27.
//

import Foundation
import XCTest

/// [K번째수](https://programmers.co.kr/learn/courses/30/lessons/42748)
/// 키 포인트
/// - 배열의 범위로 배열 생성
/// - 배열 정렬
struct LV1_K번째수 {
    func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        var result = [Int]()
        
        for command in commands {
            let i = command[0] - 1
            let j = command[1] - 1
            let k = command[2] - 1
            let arr = array[i...j].sorted()
            result.append(arr[k])
        }
        
        return result
    }
}

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
