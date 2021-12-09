//
//  Challenge_2.swift
//  
//
//  Created by Daniel Prastiwa on 18/07/21.
//

import Foundation
import XCTest
@testable import LearnUnitTest

final class Challenge2Test: XCTestCase {
    
    let input1 = "rotator"
    let input2 = "Rats live on no evil star"
    let input3 = "Never odd or even"
    let input4 = "Hello, world"
    
    var sut: SolutionChallenge2!
    
    override func setUp() {
        sut = SolutionChallenge2()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func testInput1ReturnTrue() {
        let result = sut.myOwnSolution(input: input1)
        XCTAssertTrue(result)
    }
    
    func testInput2ReturnTrue() {
        let result = sut.myOwnSolution(input: input2)
        XCTAssertTrue(result)
    }
    
    func testInput3ReturnFalse() {
        let result = sut.myOwnSolution(input: input3)
        XCTAssertFalse(result)
    }
    
    func testInput4ReturnFalse() {
        let result = sut.myOwnSolution(input: input4)
        XCTAssertFalse(result)
    }
}

struct SolutionChallenge2 {
    func myOwnSolution(input: String) -> Bool {
        let reversedInput = input.lowercased().reversed()
        return input.lowercased() == String(reversedInput)
    }
}
