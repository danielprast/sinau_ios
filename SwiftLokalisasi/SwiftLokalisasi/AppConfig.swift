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
    
}
