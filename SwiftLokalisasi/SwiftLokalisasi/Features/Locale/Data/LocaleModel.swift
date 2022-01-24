//
//  Locale.swift
//  SwiftLokalisasi
//
//  Created by Daniel Prastiwa on 24/01/22.
//

import Foundation

struct LocaleModel {
    let id: LocaleApp
    let description: String
}

let defaultLocales: [LocaleModel] = [
    LocaleModel(id: .bahasa, description: "Bahasa"),
    LocaleModel(id: .english, description: "English")
]
