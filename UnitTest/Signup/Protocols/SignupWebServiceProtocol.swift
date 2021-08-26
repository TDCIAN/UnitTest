//
//  SignupWebserviceProtocol.swift
//  UnitTest
//
//  Created by 김정민 on 2021/08/26.
//

import Foundation

protocol SignupWebServiceProtocol {
    func signup(withForm formModel: SignupFormRequestModel, completionHandler: @escaping (SignupResponseModel?, SignupError?) -> Void)
}
