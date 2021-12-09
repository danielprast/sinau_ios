//
//  Challenge_1.swift
//  
//
//  Created by Daniel Prastiwa on 17/07/21.
//

import Foundation
import XCTest
@testable import LearnUnitTest

final class Challenge1Test: XCTestCase {
    
    let letters1 = "No duplicates"
    let letters2 = "abcdefghijklmnopqrstvwxyz"
    let letters3 = "AaBbCc"
    let letters4 = "Hello, world"
    
    func testLetters1ReturnTrue() {
        assert(areLettersUnique(letters: letters1) == true, "Challenge 1 failed")
    }
    
    func testLetters2ReturnTrue() {
        assert(areLettersUnique(letters: letters2) == true, "Challenge 1 failed")
    }
    
    func testLetters3ReturnTrue() {
        //assert(areLettersUnique(letters: letters3) == true, "Challenge 1 failed")
        assert(challenge1A(input: letters3), "Challenge 1 failed")
    }
    
    func testLetters4ReturnFalse() {
        //assert(challenge1B(input: letters4) == false, "Challenge 1 failed")
        //assert(areLettersUnique(letters: letters4) == false, "Challenge 1 failed")
        //let result1 = areLettersUnique(letters: letters4)
        let result2 = challenge1B(input: letters4)
        
        //XCTAssertFalse(result1)
        XCTAssertFalse(result2)
    }
    
    // Solution1
    func challenge1A(input: String) -> Bool {
        var usedLetters = [Character]()
        
        for letter in input {
            if usedLetters.contains(letter) {
                return false
            }
            
            usedLetters.append(letter)
        }
        
        return true
    }
    
    // Solution 2
    func challenge1B(input: String) -> Bool {
        return Set(input).count == input.count
    }
    
    // My Own Solution
    func areLettersUnique(letters: String) -> Bool {
        let charsArray: [Character] = letters.map { $0 }
        print("charsArray: \(charsArray)")
        
        // transform letters to letters Set
        let lettersSet = Set(charsArray)
        print("letterSet: \(lettersSet)")
        
        // Return lettersCount equal to lettersSet
        return Set(letters).count == letters.count
    }
}
