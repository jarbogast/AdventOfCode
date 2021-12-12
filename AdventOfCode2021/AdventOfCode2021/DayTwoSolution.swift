//
//  DayTwoSolution.swift
//  AdventOfCode2021
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import Foundation

func positionWithLinesStartingWith(lines: [String], prefix: String) -> Int {
    let forwardLines = lines.filter{ $0.starts(with: prefix) }
    let forwardMoves = forwardLines.map{ Int($0.components(separatedBy: .whitespaces)[1]) }
    return forwardMoves.reduce(0) { $0 + $1! }
}

func submarinePosition(path: String) -> Int {
    let lines = linesFromPath(path: path)
    let forwardPosition = positionWithLinesStartingWith(lines: lines, prefix: "forward")
    let downPosition = positionWithLinesStartingWith(lines: lines, prefix: "down")
    let upPosition = positionWithLinesStartingWith(lines: lines, prefix: "up")
    return forwardPosition * (downPosition - upPosition)
}

func submarinePositionWithAim(path: String) -> Int {
    let lines = linesFromPath(path: path)
    var position = 0
    var depth = 0
    var aim = 0
    
    for line in lines {
        let components = line.components(separatedBy: .whitespaces)
        switch components[0] {
        case "forward":
            let stride = Int(components[1])!
            position += stride
            depth += stride * aim
        case "up":
            aim -= Int(components[1])!
        case "down":
            aim += Int(components[1])!
        default:
            position += 0
        }
    }
    
    return position * depth
}
