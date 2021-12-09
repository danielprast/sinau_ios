//
//  File.swift
//  
//
//  Created by Daniel Prastiwa on 08/06/21.
//

import Foundation

struct Converter {
    
//    func converToCelcius(fahrenheit: Double) -> Double {
//        return (fahrenheit - 32) * 5 / 9
//    }
    
    @available(OSX 10.12, *)
    func converToCelcius(fahrenheit: Double) -> Double {
        let fahrenheit = Measurement(value: fahrenheit, unit: UnitTemperature.fahrenheit)
        let celsius = fahrenheit.converted(to: .celsius)
        return celsius.value
    }
}
