//
//  SignupFormValidatorTests.swift
//  UnitTest_BasicsTests
//
//  Created by Ravikumar on 15/03/22.
//

import XCTest

@testable import UnitTest_Basics


class SignupFormValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testFirstnameValidator_whenInvalidCharecterProvided_ThrowanError() {
        
        //...Arrange
        let sut = SignupFormModelValidator()
        //... Act and Arrange
//        XCTAssertThrowsError(try sut.isFirstNameValid("Ravikumar*"), "The isFirstNameValid() should have shrown an error if users firstname contain illeagl charecter") { (errorThrown) in
//            XCTAssertEqual(errorThrown as? SignupError , SignupError.illegalCharectersFound)
//        }
        
        
        do {
           let _ = try sut.isFirstNameValid("Ravikumar*")
            XCTFail("The isFirstName() was supposed to throw an error when illeagl charecter used in Users firstname")
        } catch SignupError.illegalCharectersFound {
            //...Successfully passing
            return
        }
        catch {
            XCTFail("The isFirstNameValid() was supposed to throw the SignupError.illeagalCharectersFound error when illigal charecter used. A different Error was thrown.")
        }
    }
    
    func testFirstNameValidation_whenValidCharectersProvided_ThrowsNotError() {
        
        //...Assert
        let sut = SignupFormModelValidator()
        
        //...Act and Arrange
//        XCTAssertNoThrow(try sut.isFirstNameValid("Ravikumar"),"The isFirstNameValid() should not have thrown an errro when there are no illeagl charecter provided")
     
        do {
         let _ = try sut.isFirstNameValid("Ravikumar")
        } catch  {
            XCTFail("The isFirstNameValid() fails when receives the throw an error")
        }
    }
    
    
    
    
    
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
