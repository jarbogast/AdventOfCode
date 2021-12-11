//
//  AdventOfCode2021Tests.swift
//  AdventOfCode2021Tests
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import XCTest
@testable import AdventOfCode2021

class AdventOfCode2021Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFileParsing() throws {
        let bundle = Bundle(for: DayOneSolution.self)
        let path = bundle.path(forResource: "inputday1", ofType: "txt")
        let measurements = DayOneSolution.depthMeasurementsFromPath(path: path!)
        
        XCTAssertEqual(measurements[0], 134)
        XCTAssertEqual(measurements.count, 2000)
    }
    
    func testNumIncreases() throws {
        let bundle = Bundle(for: DayOneSolution.self)
        let path = bundle.path(forResource: "inputday1", ofType: "txt")
        let measurements = DayOneSolution.depthMeasurementsFromPath(path: path!)
        let numIncreases = DayOneSolution.numIncreasingDepthMeasurements(depthMeasurements: measurements, windowSize: 1)
        
        XCTAssertEqual(numIncreases, 1766)
    }
    
    func testNumIncreasesWithWindow() throws {
        let bundle = Bundle(for: DayOneSolution.self)
        let path = bundle.path(forResource: "inputday1", ofType: "txt")
        let measurements = DayOneSolution.depthMeasurementsFromPath(path: path!)
        let numIncreases = DayOneSolution.numIncreasingDepthMeasurements(depthMeasurements: measurements, windowSize: 3)
        
        XCTAssertEqual(numIncreases, 1797)
    }
}
