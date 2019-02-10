//
//  iMultiplyTests.swift
//  iMultiplyTests
//
//  Created by beshbashbosh on 10/02/2019.
//  Copyright © 2019 beshbashbosh. All rights reserved.
//

@testable import iMultiply
import XCTest

class iMultiplyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testQuestionOperandsWithinBounds() {
        let question = Question()
        
        XCTAssertGreaterThanOrEqual(question.left, 1)
        XCTAssertGreaterThanOrEqual(question.right, 1)
        XCTAssertLessThanOrEqual(question.right, 12)
        XCTAssertLessThanOrEqual(question.right, 12)
    }
    
    func testQuestionStringIsFormattedCorrectly() {
        let question = Question(left: 5, right: 5, operation: .multiply)        
        XCTAssertEqual(question.string, "What is 5 multiplied by 5?")
    }
    
    func testAddingWorks() {
        let question = Question(left: 5, right: 5, operation: .add)
        XCTAssertEqual(question.answer, 10)
    }
    
    func testSubtractionWorks() {
        let question = Question(left: 5, right: 5, operation: .subtract)
        XCTAssertEqual(question.answer, 0)
    }
    
    func testMultiplyWorks() {
        let question = Question(left: 5, right: 5, operation: .multiply)
        XCTAssertEqual(question.answer, 25)
    }

}
