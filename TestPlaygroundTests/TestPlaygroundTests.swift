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

    func testPerformanceExample() {
        let someObject = SomeObject(currencyCode: "Hoi")
        let someObjectWithDecimals = SomeObject(currencyCode: "Hoi2", decimals: 2)
        
        print(someObject)
        print(String(describing: someObjectWithDecimals))
        
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
