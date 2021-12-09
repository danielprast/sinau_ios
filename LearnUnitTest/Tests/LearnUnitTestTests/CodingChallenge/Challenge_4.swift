//
//  Challenge_4.swift
//  
//
//  Created by Daniel Prastiwa on 22/07/21.
//

import Foundation
import XCTest
@testable import LearnUnitTest

final class Challenge4Test: XCTestCase {
    
    let helloWorld = "Hello, world"
    let contain1 = "Hello"
    let contain2 = "WORLD"
    let contain3 = "Goodbye"
    
    func testContaint1ReturnTrue() {
        XCTAssertTrue(helloWorld.fuzzyContains(contain1))
    }
    
    func testContaint2ReturnTrue() {
        XCTAssertTrue(helloWorld.fuzzyContains(contain2))
    }
    
    func testContaint3ReturnFalse() {
        XCTAssertFalse(helloWorld.fuzzyContains(contain3))
    }
}

func printStatement(_ items: Any...) {
    print("😆 \(items)")
}

extension String {
    
    func fuzzyContains(_ input: String) -> Bool {        
        return self.range(of: input, options: .caseInsensitive) != nil
    }
}
