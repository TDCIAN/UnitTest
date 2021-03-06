//
//  SignupViewDelegateProtocol.swift
//  UnitTest
//
//  Created by 김정민 on 2021/08/26.
//

import Foundation

protocol SignupViewDelegateProtocol: AnyObject {
    func successfullSignup()
    func errorHandler(error: SignupError)
}
