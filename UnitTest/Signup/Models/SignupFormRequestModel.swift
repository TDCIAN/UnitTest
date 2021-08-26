//
//  SignupFormRequestModel.swift
//  UnitTest
//
//  Created by 김정민 on 2021/08/25.
//

import Foundation

struct SignupFormRequestModel: Encodable {
    let firstName: String
    let lastName: String
    let email: String
    let password: String
}
