//
//  TestPlaygroundTests.swift
//  TestPlaygroundTests
//
//  Created by Leon Liefting on 4/12/19.
//  Copyright © 2019 Leon Liefting. All rights reserved.
//

import XCTest
@testable import TestPlayground

class TestPlaygroundTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testSomeObject() {
        let currencyCode = "Hoi"
        let currencyCode2 = "Hoi2"
        
        let someObject = SomeObject(currencyCode: currencyCode)
        let someObjectWithDecimals = SomeObject(currencyCode: currencyCode2, decimals: 2)
        
        XCTAssertEqual(currencyCode, someObject.code)
        
        XCTAssertEqual("SomeObject: \(currencyCode2)", String(describing: someObjectWithDecimals))
    }
    
    func testValidPerson_Success() {
        let firstName = "Leon"
        let middleName = ""
        let lastName = "Liefting"
        let age = 30
        do {
            let person = try Person(firstName: firstName, middleName: middleName, lastName: lastName, age: age)

            print("\(person.firstName) \(person.lastName)")
            
            XCTAssertEqual(firstName, person.firstName)
            XCTAssertEqual(lastName, person.lastName)
            XCTAssertEqual(age, person.age)
        } catch ValidationError.invalidFirstName {
            XCTFail("Should not fail.")
        } catch ValidationError.invalidLastName {
            XCTFail("Should not fail.")
        } catch ValidationError.unborn {
            XCTFail("Should not fail.")
        } catch {
            XCTFail("Should not fail.")
        }
    }
    
    func testUnbornPerson_Fail() {
        let firstName = "Leon"
        let middleName = ""
        let lastName = "Liefting"
        let age = -7
        
        do {
            // I first put let person = try Person(....) but then it complained about it not being used. Apperently you then replace it by _
            _ = try Person(firstName: firstName, middleName: middleName, lastName: lastName, age: age)
            
            XCTFail("Should have throwed an exception.")
        } catch ValidationError.invalidFirstName {
            XCTFail("Should not fail like this.")
        } catch ValidationError.invalidLastName {
            XCTFail("Should not fail like this.")
        } catch ValidationError.unborn {
            print("You're not supposed to be born yet.")
        } catch {
            XCTFail("Should not fail like this.")
        }
    }

}
