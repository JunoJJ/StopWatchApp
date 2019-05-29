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
    
    var viewControllerForUnitTest: ViewController!
    
    override func setUp() {
        super.setUp()
        viewControllerForUnitTest = ViewController()
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewControllerForUnitTest = storyboard.instantiateViewController(withIdentifier: "MyViewController") as! ViewController
        
        self.viewControllerForUnitTest.loadView()
        self.viewControllerForUnitTest.viewDidLoad()
    }
    
    override func tearDown() {
        viewControllerForUnitTest = nil
        super.tearDown()
    }
    
    func testViewcontrollerButton() {
        
        XCTAssertNotNil(self.viewControllerForUnitTest.pauseButton, "No Pause Button")
    }
    func testPlayButtonInvokesActionMethodWhenTapped() {
        
        _ = self.viewControllerForUnitTest.playButton.actions(forTarget: self.viewControllerForUnitTest, forControlEvent: UIControlEvents.touchUpInside)
        _ = self.viewControllerForUnitTest.pauseButton
        _ = self.viewControllerForUnitTest.playButton
        
        //Testcase for checking Play and Pause Button variable
        if let playString = viewControllerForUnitTest.playButton.titleLabel?.text
        {
            XCTAssertEqual(playString, "Play")
        }
        if let pauseString = viewControllerForUnitTest.pauseButton.titleLabel?.text {
            XCTAssertEqual(pauseString, "Pause")
        }

    }
    
    
    func testAfterButtonTap() {
        let _: UIButton = UIButton()
        viewControllerForUnitTest.playButton.sendActions(for: UIControlEvents.touchUpInside)
        print("Play Button Pressed")
    }
    
    func testExample() {
        //Testcase for Reset function timer eqaual to zero
        let testTimer = 0
        XCTAssertEqual(viewControllerForUnitTest.currentTime, testTimer, "success time is 0")
        //Testcase for checking timer interval
        XCTAssertEqual(viewControllerForUnitTest.timeInterval, 0.1, "success time is 0.1")

    }
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
