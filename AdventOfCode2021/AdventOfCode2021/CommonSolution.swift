//
//  CommonSolution.swift
//  AdventOfCode2021
//
//  Created by Jonathan Arbogast on 12/11/21.
//

import Foundation

func linesFromPath(path: String) -> [String] {
    do {
        let data = try String(contentsOfFile: path)
        return data.components(separatedBy: .newlines)
    } catch {
        return []
    }
}
