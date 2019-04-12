//
//  SomeObject.swift
//  TestPlayground
//
//  Created by Leon Liefting on 4/12/19.
//  Copyright © 2019 Leon Liefting. All rights reserved.
//

import Foundation

class SomeObject: NSObject {
    let code: String
    var decimals: Int = 0
    
    init(currencyCode: String, decimals: Int) {
        self.code = currencyCode
        self.decimals = decimals
    }
    
    init(currencyCode: String) {
        self.code = currencyCode
    }
    
    public override var description: String {
        
        return "SomeObject: \(code)"
    }
}
