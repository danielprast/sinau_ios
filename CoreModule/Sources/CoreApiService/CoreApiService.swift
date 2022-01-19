//
//  File.swift
//  
//
//  Created by Daniel Prastiwa on 12/12/21.
//

import Foundation
import Alamofire
import CoreModule

public struct BaseApiService {
    
    public init() {}
    
    public func greetings() {
        print("Hello bro!")
    }
    
    public func check() {
        var coreHelper = CoreHelper()
        coreHelper.tuneHelper()
    }
}
