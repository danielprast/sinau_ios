//
//  XibView.swift
//  SwiftLokalisasi
//
//  Created by Okelaptop on 19/01/22.
//

import UIKit

class XibView {
    static func nib<V>() -> V {
        let bundle = Bundle(for: self)
        let nib = UINib(nibName: "\(V.self)", bundle: bundle)
        return nib.instantiate(withOwner: nil, options: nil).first! as! V
    }
}
