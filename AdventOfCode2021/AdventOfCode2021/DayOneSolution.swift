//
//  DayOneSolution.swift
//  AdventOfCode2021
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import Foundation

class DayOneSolution {
    
    static func depthMeasurementsFromPath(path: String) -> [Int] {
        return linesFromPath(path: path).map { return Int($0) ?? -1 }.filter{ $0 > 0 }
    }
    
    static func numIncreasingDepthMeasurements(depthMeasurements: [Int], windowSize: Int) -> Int {
        return depthMeasurements.enumerated().filter{ ($0.0 > (windowSize - 1)) && (($0.1 - depthMeasurements[$0.0-windowSize]) > 0) }.count
    }
}
