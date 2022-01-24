//
//  AppConfig.swift
//  SwiftLokalisasi
//
//  Created by Okelaptop on 19/01/22.
//

import UIKit

class AppConfig {
    static let shared = AppConfig()
    private init() {}
    
    var rootViewController: UIViewController {
        get {
            return SettingsController()
        }
    }
    
    let localeSystem = LocalizationSystem()
    
    // MARK: - Static
    
    static func getLocalizedText(forKey key: LocaleTextKeys) -> String {
        return AppConfig.shared.localeSystem.getLocalizedText(forKey: key.rawValue)
    }
}
