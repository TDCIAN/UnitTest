//
//  MockSignupViewDelegate.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/26.
//

import Foundation
import XCTest
@testable import UnitTest

class MockSignupViewDelegate: SignupViewDelegateProtocol {
    
    var expectation: XCTestExpectation?
    var successfulSignupCounter = 0
    var errorHandlerCounter = 0
    var signupError: SignupError?
    
    func successfullSignup() {
        successfulSignupCounter += 1
        expectation?.fulfill()
    }
    
    func errorHandler(error: SignupError) {
        signupError = error
        errorHandlerCounter += 1
        expectation?.fulfill()
    }
}
