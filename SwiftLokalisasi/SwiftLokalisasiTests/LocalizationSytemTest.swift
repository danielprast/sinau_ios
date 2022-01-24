//
//  LocalizationSytemTest.swift
//  SwiftLokalisasiTests
//
//  Created by Daniel Prastiwa on 20/01/22.
//

import XCTest
@testable import SwiftLokalisasi

final class LocalizationSytemTest: XCTestCase {
    
    let localeSystem = LocalizationSystem()
    
    func test_getEnglishLoginCaption() {
        let loginCaption = LocaleTextKeys.loginCaption
        localeSystem.updateLocale(.english)
        XCTAssertEqual(localeSystem.getLocalizedText(forKey: loginCaption.rawValue), "Login")
    }
    
    func test_getBahasaLoginCaption() {
        let loginCaption = LocaleTextKeys.loginCaption
        localeSystem.updateLocale(.bahasa)
        XCTAssertEqual(localeSystem.getLocalizedText(forKey: loginCaption.rawValue), "Masuk")
    }
    
    func test_getEnglishRegisterCaption() {
        let registerCaption = LocaleTextKeys.registerCaption
        localeSystem.updateLocale(.english)
        XCTAssertEqual(localeSystem.getLocalizedText(forKey: registerCaption.rawValue), "Register")
    }
    
    func test_getBahasaRegisterCaption() {
        let registerCaption = LocaleTextKeys.registerCaption
        localeSystem.updateLocale(.bahasa)
        XCTAssertEqual(localeSystem.getLocalizedText(forKey: registerCaption.rawValue), "Daftar")
    }
    
    func test_getWelcomeHeaderKeyReturnsEmptyString() {
        let caption: LocaleTextKeys = .welcomeHeader
        XCTAssertEqual(localeSystem.getLocalizedText(forKey: caption.rawValue), "")
    }
    
}
