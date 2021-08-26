//
//  MockSignupModelValidator.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/26.
//

import Foundation
@testable import UnitTest

class MockSignupModelValidator: SignupModelValidatorProtocol {
    
    var isFirstNameValidated: Bool = false
    
    func isFirstNameValid(firstName: String) -> Bool {
        isFirstNameValidated = true
        return isFirstNameValidated
    }
    
    func isLastNameValid(lastName: String) -> Bool {
        return true
    }
    
    func isValidEmailFormat(email: String) -> Bool {
        return true
    }
    
    func isPasswordValid(password: String) -> Bool {
        return true
    }
    
    func doPasswordsMatch(password: String, repeatPassword: String) -> Bool {
        return true
    }
    
    
}
