//
//  SignupFormModelValidator.swift
//  UnitTest_Basics
//
//  Created by Ravikumar on 15/03/22.
//

import Foundation


class SignupFormModelValidator {
    
    private let invalidCharecters = CharacterSet(charactersIn: "{}$!@#%^&*()")
    
    func isFirstNameValid(_ firstName: String) throws -> Bool {
        
        var returnValue = true
        //... Cehck illeagl charecters
        if firstName.rangeOfCharacter(from: invalidCharecters) != nil {
            throw SignupError.illegalCharectersFound
        }
        
        //... Check First Name
        if firstName.count < 2 || firstName.count > 10 {
            returnValue = true
        }
        return returnValue
    }
    
}
