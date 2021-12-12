//
//  AdventOfCode2021Tests.swift
//  AdventOfCode2021Tests
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import XCTest
@testable import AdventOfCode2021

class DayOneSolutionTests: XCTestCase {

    var measurements: [Int] = []
    
    override func setUpWithError() throws {
        let bundle = Bundle(for: DayOneSolution.self)
        let path = bundle.path(forResource: "inputday1", ofType: "txt")
        measurements = DayOneSolution.depthMeasurementsFromPath(path: path!)
    }

    func testFileParsing() throws {
        XCTAssertEqual(measurements[0], 134)
        XCTAssertEqual(measurements.count, 2000)
    }
    
    func testNumIncreases() throws {
        XCTAssertEqual(DayOneSolution.numIncreasingDepthMeasurements(depthMeasurements: measurements, windowSize: 1), 1766)
        XCTAssertEqual(DayOneSolution.numIncreasingDepthMeasurements(depthMeasurements: measurements, windowSize: 3), 1797)
    }
}
