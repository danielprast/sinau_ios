//
//  LocalePickerView.swift
//  SwiftLokalisasi
//
//  Created by Daniel Prastiwa on 24/01/22.
//

import UIKit

final class LocalePicker: NSObject {
    
    fileprivate var locales: [LocaleModel] = []
    
    lazy var pickerView: UIPickerView = {
        let pv = UIPickerView(frame: .zero)
        pv.delegate = self
        pv.dataSource = self
        return pv
    }()
    
    var didSelectRow: ((Int) -> Void)?
    
    func setDataSource(_ locales: [LocaleModel]) {
        if !self.locales.isEmpty {
            self.locales.removeAll()
        }
        self.locales.append(contentsOf: locales)
    }
    
}

extension LocalePicker: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locales.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return locales[row].description
    }
}
