//
//  LocaleDefault.swift
//  SwiftLokalisasi
//
//  Created by Daniel Prastiwa on 24/01/22.
//

import Foundation

struct LocaleDefault {
    
    enum Keys: String {
        case localeId
    }
    
    static var localeID: String {
        get {
            return UserDefaults.standard.string(forKey: Keys.localeId.rawValue) ?? ""
        }
        
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.localeId.rawValue)
        }
    }
}
