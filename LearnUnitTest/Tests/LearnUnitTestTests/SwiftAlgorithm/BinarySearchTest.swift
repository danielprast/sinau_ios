//
//  BinarySearchTest.swift
//  
//
//  Created by Daniel Prastiwa on 29/07/21.
//

import Foundation
import XCTest
@testable import LearnUnitTest

final class BinarySearchTest: XCTestCase {
    
    fileprivate var sut = BinarySearch()
    
    func testPerformBinarySearchReturn13() {
        let numbers = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67]
        
        //let result = sut.search(numbers, key: 43, range: 0 ..< numbers.count)
        let result = sut.searchInterative(numbers, key: 42)
        
        XCTAssertEqual(result, nil)
        //XCTAssertEqual(result, nil)
    }
    
}
