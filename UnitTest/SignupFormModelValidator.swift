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
        
        if firstName.isEmpty {
            returnValue = false
        }
        
        return returnValue
    }
}
