//
//  Challenge_3.swift
//  
//
//  Created by Daniel Prastiwa on 19/07/21.
//

import Foundation
import XCTest
@testable import LearnUnitTest

final class Challenge3Test: XCTestCase {
    
    let input1: (String, String) = ("abca", "abca")
    let input2 = ("abc","cba")
    let input3 = ("a1 b2", "b1 a2")
    let input4 = ("abc", "abca")
    let input5 = ("abc", "Abc")
    let input6 = ("abc","cbAa")
    let input7 = ("abcc", "abca")
    
    var solver = SolutionChallenge3()
    
    func testInput1ReturnTrue() {
        let result = solver.solve(input: input1)
        XCTAssertTrue(result)
    }
    
    func testInput2ReturnTrue() {
        let result = solver.solve(input: input2)
        XCTAssertTrue(result)
    }
    
    func testInput3ReturnTrue() {
        let result = solver.solve(input: input3)
        XCTAssertTrue(result)
    }
    
    func testInput4ReturnFalse() {
        let result = solver.solve(input: input4)
        XCTAssertFalse(result)
    }
    
    func testInput5ReturnFalse() {
        let result = solver.solve(input: input5)
        XCTAssertFalse(result)
    }
    
    func testInput6ReturnFalse() {
        let result = solver.solve(input: input6)
        XCTAssertFalse(result)
    }
    
    func testInput7ReturnFalse() {
        let result = solver.solve(input: input7)
        //let result = solver.challenge3a(input: input7)
        XCTAssertFalse(result)
    }
}

struct SolutionChallenge3 {
    /// my solution
    func solve(input: (String, String)) -> Bool {
        let str1 = input.0
        let str2 = input.1
        
        if str1.count != str2.count {
            return false
        }
        
        return String(str1.sorted()) == String(str2.sorted())
    }
    
    /// naive solution
    func challenge3a(input: (String, String)) -> Bool {
        var checkString = input.1
        
        for letter in input.0 {
            if let index = checkString.firstIndex(of: letter) {
                checkString.remove(at: index)
            } else {
                return false
            }
        }
        
        return checkString.count == 0
    }
    
    /// simplest solution
    func challenge3b(input: (String, String)) -> Bool {
        return input.0.sorted() == input.1.sorted()
    }
}
