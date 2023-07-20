//
//  LearningUnitTestTests.swift
//  LearningUnitTestTests
//
//  Created by dary winata nugraha djati on 16/07/23.
//

import XCTest
@testable import LearningUnitTest

final class LearningUnitTestTests: XCTestCase {
    
    var simpleMath : SimpleMath!
    
    //start every new test
    override func setUp() {
        simpleMath = SimpleMath()
    }
    
    override func tearDown() {
        simpleMath = nil
    }
    
    func testAddTenWorks() {
        //given - arrange
        var expected: Int = 0
        
        //when - act
        expected = simpleMath.addTen(10)
        
        //then - assert
        XCTAssert(expected == 20, "This should be 20")
        XCTAssertTrue(expected == 20)
        XCTAssertEqual(expected, 20, "this should be 20")
    }
    
    func testBeSquareSucceeds() {
        var expected = 0
        
        expected = simpleMath.beSquare(4)
        
        XCTAssertEqual(expected, 16)
    }
}
