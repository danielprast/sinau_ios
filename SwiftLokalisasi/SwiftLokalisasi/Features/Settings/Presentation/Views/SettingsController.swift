//
//  SettingsController.swift
//  SwiftLokalisasi
//
//  Created by Okelaptop on 19/01/22.
//

import UIKit

class SettingsController: UIViewController {
    
    var mainView: SettingsView {
        get {
            self.view as! SettingsView
        }
    }
    
    fileprivate func handleSelectedLocalization() {
        var locale: Locale
        if AppConfig.shared.localeSystem.locale == .bahasa {
            locale = .english
        } else {
            locale = .bahasa
        }
        AppConfig.shared.localeSystem.updateLocale(locale)
        localizeElements()
    }
    
    fileprivate func localizeElements() {
        mainView.localeLabel.text = AppConfig.shared.localeSystem.locale.rawValue
        mainView.changeLanguageButton.setTitle(AppConfig.getLocalizedText(forKey: .changeLanguage), for: .normal)
    }
    
    override func loadView() {
        self.view = XibView.nib() as SettingsView
        mainView.onTapChangeLanguageButton = { [unowned self] in
            self.handleSelectedLocalization()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeElements()
    }
    
    deinit {
        print("\(SettingsController.self) deinited")
    }
}

//class AwoController: UIViewController {
//
//    lazy var aButton: UIButton = {
//        let btn = UIButton(type: .system)
//        btn.setTitle("Settings", for: .normal)
//        btn.addTarget(self, action: #selector(presentSettingsPage), for: .touchUpInside)
//        btn.translatesAutoresizingMaskIntoConstraints = false
//        return btn
//    }()
//
//    @objc func presentSettingsPage() {
//        present(SettingsController(), animated: true, completion: nil)
//    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.backgroundColor = .white
//        view.addSubview(aButton)
//        NSLayoutConstraint.activate([
//            aButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//            aButton.centerYAnchor.constraint(equalTo: view.centerYAnchor)
//        ])
//    }
//}
