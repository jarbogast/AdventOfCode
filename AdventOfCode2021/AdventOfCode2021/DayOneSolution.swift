//
//  DayOneSolution.swift
//  AdventOfCode2021
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import Foundation

class DayOneSolution {
    
    static func depthMeasurementsFromPath(path: String) -> [Int] {
        do {
            let data = try String(contentsOfFile: path)
            let measurementStrings = data.components(separatedBy: .newlines)
            return measurementStrings.map { return Int($0) ?? -1 }.filter{ $0 > 0 }
        } catch {
            return []
        }
    }
    
    static func numIncreasingDepthMeasurements(depthMeasurements: [Int], windowSize: Int) -> Int {
        return depthMeasurements.enumerated().filter{ ($0.0 > (windowSize - 1)) && (($0.1 - depthMeasurements[$0.0-windowSize]) > 0) }.count
    }
}
