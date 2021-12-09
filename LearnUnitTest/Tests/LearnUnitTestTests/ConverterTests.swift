//
//  File.swift
//  
//
//  Created by Daniel Prastiwa on 08/06/21.
//

import XCTest
@testable import LearnUnitTest

final class ConverterTests: XCTestCase {
    
    var sut: Converter!
    
    override func setUp() {
        sut = Converter()        
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func test32FahrenheitIsZeroCelsius() {
        // given
        let input = 32.0
        
        // when
        let output = sut.converToCelcius(fahrenheit: input)
        
        // then
        XCTAssertEqual(output, 0, accuracy: 0.000001)
    }
    
    func test212FahrenheitIs100Celsius() {
        // given
        let input = 212.0
        
        // when
        let output = sut.converToCelcius(fahrenheit: input)
        
        // then
        XCTAssertEqual(output, 100, accuracy: 0.000001)
    }
    
    func test100FahrenheitIs37Celsius() {
        // given
        let input = 100.0
        
        // when
        let celsius = sut.converToCelcius(fahrenheit: input)
        
        // then
        XCTAssertEqual(celsius, 37.777777, accuracy: 0.000001)
    }
    
//    func testFahrenheitToCelsius() {
//        // given
//        let sut = Converter()
//        let input1 = 32.0
//        let input2 = 212.0
//
//        // when
//        let output1 = sut.converToCelcius(fahrenheit: input1)
//        let output2 = sut.converToCelcius(fahrenheit: input2)
//
//        // then
//        XCTAssertEqual(output1, 0)
//        XCTAssertEqual(output2, 100)
//    }
}
