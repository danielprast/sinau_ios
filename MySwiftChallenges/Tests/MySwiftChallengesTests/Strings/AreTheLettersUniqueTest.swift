//
//  AreTheLettersUniqueTest.swift
//  
//
//  Created by Daniel Prastiwa on 17/12/21.
//

import XCTest
@testable import MySwiftChallenges

final class AreTheLettersUniqueTest: XCTestCase {
    
    var sut: AreTheLettersUnique!
    
    override func setUp() {
        sut = AreTheLettersUnique()
    }
    
    func testModuleReturnTrue() {
        let input = "ojodumeh"
        let result = sut.performTask(input)
        XCTAssertEqual(result, true)
    }
    
}
