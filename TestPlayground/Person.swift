//
//  Person.swift
//  TestPlayground
//
//  Created by Leon Liefting on 6/13/19.
//  Copyright © 2019 Leon Liefting. All rights reserved.
//

import Foundation

enum ValidationError: Error {
    case invalidFirstName
    case invalidLastName
    case unborn
}

class Person: NSObject {
    let firstName: String
    var middleName: String
    let lastName: String
    var age: Int
    
    public init(firstName:String, middleName:String, lastName:String, age:Int) throws {
        guard !firstName.isEmpty else {
            throw ValidationError.invalidFirstName
        }
        self.firstName = firstName
        
        self.middleName = middleName
        
        guard !lastName.isEmpty else {
            throw ValidationError.invalidLastName
        }
        self.lastName = lastName
        
        guard age >= 0 else {
            throw ValidationError.unborn
        }
        self.age = age
    }
    
    
}
