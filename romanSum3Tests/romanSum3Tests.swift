//
//  romanSum3Tests.swift
//  romanSum3Tests
//
//  Created by Luis Miguel Rosa Reyes on 6/6/21.
//

import XCTest
@testable import romanSum3

class romanSum3Tests: XCTestCase {

    func testEven(){
        let roman = romanSum()
        let result = roman.evenNumeral(roman: "XI")
        XCTAssertEqual(11, result)
    }
    
    func testOdd(){
        let roman = romanSum()
        let result = roman.oddNumeral(roman: "XII")
        XCTAssertEqual(12, result)
    }
    
    func testRoman(){
        let roman = romanSum()
        let result1 = roman.oddNumeral(roman: "XII")
        let result2 = roman.evenNumeral(roman: "IX")
        
        let result = roman.toRoman(numeral: result1 + result2)
        XCTAssertEqual("XXI", result)
    }

}
