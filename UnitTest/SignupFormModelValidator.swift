//
//  SignupFormModelValidator.swift
//  UnitTest
//
//  Created by 김정민 on 2021/08/25.
//

import Foundation

class SignupFormModelValidator {
    func isFirstNameValid(firstName: String) -> Bool {
        var returnValue = true
        
        if firstName.count < SignupConstants.firstNameMinLength || firstName.count > SignupConstants.firstNameMaxLength {
            returnValue = false
        }
        
        return returnValue
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        return password == repeatPassword
    }

}
