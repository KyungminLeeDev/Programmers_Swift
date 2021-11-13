//
//  LV2_타겟넘버.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/11/13.
//

import Foundation
import XCTest

/// [타겟 넘버](https://programmers.co.kr/learn/courses/30/lessons/43165)
/// - DFS
/// - [풀이 참고](https://leechamin.tistory.com/468)
struct LV2_타겟넘버 {
    func dfs(_ numbers: [Int], _ target: Int, _ index: Int, _ sum: Int) -> Int {
        if index == numbers.count {
            if sum == target {
                return 1
            } else {
                return 0
            }
        }
        
        return dfs(numbers, target, index + 1, sum + numbers[index]) + dfs(numbers, target, index + 1, sum - numbers[index])
    }
    
    func solution(_ numbers:[Int], _ target:Int) -> Int {
        return dfs(numbers, target, 0, 0)
    }
}

class LV2_타겟넘버_Tests: XCTestCase {
    private struct TestCase {
        let numbers: [Int]
        let target: Int
        let output: Int
    }
    
    private var sut: LV2_타겟넘버!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_타겟넘버()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(numbers: [1, 1, 1, 1, 1], target: 3, output: 5)
        
        // 2. when
        let output = sut.solution(testCase.numbers, testCase.target)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
