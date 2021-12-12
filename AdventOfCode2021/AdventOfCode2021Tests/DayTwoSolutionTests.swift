//
//  DayTwoSolutionTests.swift
//  AdventOfCode2021Tests
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import XCTest
@testable import AdventOfCode2021

class DayTwoSolutionTests: XCTestCase {
    var path = ""
    
    override func setUpWithError() throws {
        let bundle = Bundle(for: DayOneSolution.self)
        path = bundle.path(forResource: "inputday2", ofType: "txt")!
    }
    func testSubmarine() throws {
        XCTAssertEqual(submarinePosition(path: path), 2091984)
    }
    
    func testSubmarineWithAim() throws {
        XCTAssertEqual(submarinePositionWithAim(path: path), 2086261056)
    }
}
