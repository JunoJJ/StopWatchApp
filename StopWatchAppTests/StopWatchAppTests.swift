//
//  StopWatchAppTests.swift
//  StopWatchAppTests
//
//  Created by Juno James on 5/15/19.
//  Copyright © 2019 JunoJames. All rights reserved.
//

import XCTest
@testable import StopWatchApp

class StopWatchAppTests: XCTestCase {
    
    var viewController: ViewController!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        viewController = ViewController()
        
        

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        
        viewController = nil
        super.tearDown()


    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        
        //Check Timer
//        let testTimer = 10
//        XCTAssertEqual(viewController.currentTime, testTimer, "success time is 0")
        

    }
    
    //For Boolean
    func XCTAssertTrue(_ expression: @autoclosure () throws -> Bool, _ message: @autoclosure () -> String = "", file: StaticString = #file, line: UInt = #line)  {
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
