//
//  LV2_다리를지나는트럭.swift
//  Programmers_Swift
//
//  Created by Kyungmin Lee on 2021/04/24.
//

import Foundation

/// [다리를 지나는 트럭](https://programmers.co.kr/learn/courses/30/lessons/42583)
struct LV2_다리를지나는트럭 {
    /// - Parameters:
    ///   - bridge_length: 다리 길이
    ///   - weight: 다리가 견딜 수 있는 무게
    ///   - truck_weights: 트럭별 무게 (배열 순서가 트럭의 순서)
    /// - Returns: 모든 트럭이 다리를 건너는 최소 시간
    func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
        var trucks = truck_weights
        var bridge = Array(repeating: 0, count: bridge_length)
        var bridgeWeight = 0
        var sec = 0
        
        while !bridge.isEmpty {
            // 1초마다 다리위의 트럭 또는 빈공간은 움직임
            sec += 1
            bridgeWeight -= bridge.removeFirst()
            
            // 대기중인 트럭이 다리에 진입해도 되는지 확인
            // - 무게를 견딜 수 있으면 트럭 진입
            // - 아니면 빈공간 진입
            if let truck = trucks.first {
                if bridgeWeight + truck <= weight {
                    trucks.removeFirst()
                    bridge.append(truck)
                    bridgeWeight += truck
                } else {
                    bridge.append(0)
                }
            }
        }
        
        return sec
    }
}
