//
//  DayTwoSolutionTests.swift
//  AdventOfCode2021Tests
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import XCTest
@testable import AdventOfCode2021

class DayTwoSolutionTests: XCTestCase {

    var measurements: [Int] = []
    
    override func setUpWithError() throws {
        let bundle = Bundle(for: DayOneSolution.self)
        let path = bundle.path(forResource: "inputday2", ofType: "txt")
        measurements = DayOneSolution.depthMeasurementsFromPath(path: path!)
    }

    func testFileParsing() throws {
        let bundle = Bundle(for: DayOneSolution.self)
        let path = bundle.path(forResource: "inputday2", ofType: "txt")
        XCTAssertEqual(submarinePosition(path: path!), 2091984)
    }
}
