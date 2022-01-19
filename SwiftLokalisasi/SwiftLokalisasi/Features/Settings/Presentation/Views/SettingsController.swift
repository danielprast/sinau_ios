//
//  SettingsController.swift
//  SwiftLokalisasi
//
//  Created by Okelaptop on 19/01/22.
//

import UIKit

class SettingsController: UIViewController {
    
    var controllerView: SettingsView {
        get {
            self.view as! SettingsView
        }
    }
    
    override func loadView() {
        self.view = XibView.nib() as SettingsView
        controllerView.onTapChangeLanguageButton = { [unowned self] in
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
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
