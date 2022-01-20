//
//  LocalizationSystem.swift
//  SwiftLokalisasi
//
//  Created by Daniel Prastiwa on 19/01/22.
//

import Foundation
import UIKit

final class LocalizationSystem {
    private(set) var locale: Locale! {
        didSet {
            updateBundle()
        }
    }
    
    private var bundle: Bundle?
    
    public init() {
        updateLocale(.bahasa)
    }
    
    fileprivate func updateBundle() {
        guard let path = Bundle.main.path(forResource: locale.rawValue, ofType: "lproj") else { return }
        bundle = Bundle(path: path)
    }
    
    func updateLocale(_ locale: Locale) {
        self.locale = locale
    }
    
    func getLocalizedText(forKey key: String) -> String {
        guard let bundle = self.bundle else { return "" }
        let result = NSLocalizedString(key, tableName: "", bundle: bundle, value: "", comment: "")
        return result == key ? "" : result
    }
}

enum Locale: String, CaseIterable {
    case bahasa = "id"
    case english = "en"
}

extension Locale {
    static func map(_ str: String) -> Self {
        switch str {
        case "id":
            return bahasa
        case "en":
            return english
        default:
            return bahasa
        }
    }
}
