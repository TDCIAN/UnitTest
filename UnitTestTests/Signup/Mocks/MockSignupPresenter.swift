//
//  MockSignupPresenter.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/27.
//

import Foundation
@testable import UnitTest

class MockSignupPresenter: SignupPresenterProtocol {
    var processUserSignupCalled: Bool = false
    
    required init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol, delegate: SignupViewDelegateProtocol) {
        
    }
    
    func processUserSignup(formModel: SignupFormModel) {
        processUserSignupCalled = true
    }
}
