//
//  SignupPresenterProtocol.swift
//  UnitTest
//
//  Created by 김정민 on 2021/08/27.
//

import Foundation

protocol SignupPresenterProtocol: AnyObject {
    
    init(formModelValidator: SignupModelValidatorProtocol, webservice: SignupWebServiceProtocol, delegate: SignupViewDelegateProtocol)
    func processUserSignup(formModel: SignupFormModel)
}
