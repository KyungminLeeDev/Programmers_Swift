//
//  LV3_네트워크.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/11/14.
//

import Foundation
import XCTest

/// [네트워크](https://programmers.co.kr/learn/courses/30/lessons/43162)
/// - DFS
/// - [풀이 참고](https://jellysong.tistory.com/114)
struct LV2_네트워크 {
    func dfs(_ graph: [[Int]], _ visited: inout [Bool], _ i: Int) {
        if i == graph.count {
            return
        }
        visited[i] = true
        for (j, isConnect) in graph[i].enumerated() {
            if isConnect == 1 && !visited[j] {
                dfs(graph, &visited, j)
            }
        }
    }
    
    func solution(_ n:Int, _ computers:[[Int]]) -> Int {
        var visited = Array(repeating: false, count: n)
        var count = 0
        
        for i in 0..<n {
            if visited[i] == false {
                dfs(computers, &visited, i)
                count += 1
            }
        }
        
        return count
    }
}

class LV2_네트워크_Tests: XCTestCase {
    private struct TestCase {
        let n: Int
        let compiuters: [[Int]]
        let output: Int
    }
    
    private var sut: LV2_네트워크!
    private var testCase: TestCase!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = LV2_네트워크()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        testCase = nil
        try super.tearDownWithError()
    }
    
    func testCase1() {
        // 1. given
        testCase = TestCase(n: 3,
                            compiuters: [[1, 1, 0], [1, 1, 0], [0, 0, 1]],
                            output: 2)
        
        // 2. when
        let output = sut.solution(testCase.n, testCase.compiuters)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
    
    func testCase2() {
        // 1. given
        testCase = TestCase(n: 3,
                            compiuters: [[1, 1, 0], [1, 1, 1], [0, 1, 1]],
                            output: 1)
        
        // 2. when
        let output = sut.solution(testCase.n, testCase.compiuters)
        
        // 3. then
        XCTAssertEqual(output, testCase.output)
    }
}
