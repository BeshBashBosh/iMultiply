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

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
