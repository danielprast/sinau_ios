//
//  SettingsView.swift
//  SwiftLokalisasi
//
//  Created by Okelaptop on 19/01/22.
//

import UIKit

class SettingsView: UIView {

    @IBOutlet weak var localeLabel: UILabel!
    
    @IBAction func didTapChangeLanguageButton(_ sender: UIButton) {
        onTapChangeLanguageButton?()
    }
    
    var onTapChangeLanguageButton: (() -> Void)?
    
    deinit {
        print("\(SettingsView.self) deinited")
    }
    
//    static func nib() -> SettingsView {
//        let bundle = Bundle(for: self)
//        let nib = UINib(nibName: "\(SettingsView.self)", bundle: bundle)
//        return nib.instantiate(withOwner: nil, options: nil).first! as! SettingsView
//    }
}
