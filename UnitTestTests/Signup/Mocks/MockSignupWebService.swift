//
//  MockSignupWebService.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/26.
//

import Foundation
@testable import UnitTest

class MockSignupWebService: SignupWebServiceProtocol {
    var isSignupMethodCalled: Bool = false
    var shouldReturnError: Bool = false
    
    func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupError?) -> Void) {
        
        isSignupMethodCalled = true
        
        if shouldReturnError {
            completionHandler(nil, SignupError.failedRequest(description: "Signup request was not successful"))
        } else {
            let responseModel = SignupResponseModel(status: "ok")
            completionHandler(responseModel, nil)
        }
        
    }
    
    
}
