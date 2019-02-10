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
        var question = Question()
        question.left = 5
        question.right = 5
        question.operation = .multiply
        
        XCTAssertEqual(question.string, "What is 5 multiplied by 5?")
    }

}
