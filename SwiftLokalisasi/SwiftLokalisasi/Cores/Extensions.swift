//
//  Extensions.swift
//  SwiftLokalisasi
//
//  Created by Okelaptop on 19/01/22.
//

import UIKit

extension UIView {
    
    func loadViewFromNib(nibName: String) -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: nil, options: nil).first as? UIView
    }    
    
}
