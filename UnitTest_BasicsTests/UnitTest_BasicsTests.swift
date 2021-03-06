//
//  UnitTest_BasicsTests.swift
//  UnitTest_BasicsTests
//
//  Created by Ravikumar on 15/03/22.
//

import XCTest
@testable import UnitTest_Basics

class UnitTest_BasicsTests: XCTestCase {

  //  var sut: ViewController!
    var sut:XIBBaseViewController!
    
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    
        //... This is normal of way loading the viewcontroller
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        sut = storyboard.instantiateViewController(identifier: "ViewController") as? ViewController
//        sut.loadViewIfNeeded()
        
        
        //... This is the way of XIB base Viewcontrolelr Loading
        sut = XIBBaseViewController()
        sut.loadViewIfNeeded()
        
    
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
