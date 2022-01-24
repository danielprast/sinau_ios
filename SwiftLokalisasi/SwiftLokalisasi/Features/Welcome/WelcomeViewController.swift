//
//  WelcomeViewController.swift
//  SwiftLokalisasi
//
//  Created by Daniel Prastiwa on 24/01/22.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    lazy var pickerView: LocalePicker = {
        let lpv = LocalePicker()
        return lpv
    }()
    
    lazy var tileView: LocaleTileButtonView = {
        let tileView = LocaleTileButtonView()
        tileView.translatesAutoresizingMaskIntoConstraints = false
        return tileView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(tileView)
        
        tileView.onTap = { [weak self] in
            print("JOSS!!!")
        }
        
        NSLayoutConstraint.activate([
            tileView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            tileView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            tileView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            tileView.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
}
