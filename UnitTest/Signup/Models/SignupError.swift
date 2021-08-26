//
//  SignupErrors.swift
//  UnitTest
//
//  Created by 김정민 on 2021/08/26.
//

import Foundation

enum SignupError: Error, Equatable {
    case invalidResponseModel
    case invalidRequestURLString
    case failedRequest(description: String)
    
    var errorDescription: String? {
        switch self {
        case .failedRequest(description: let description):
            return description
        case .invalidResponseModel, .invalidRequestURLString:
            return ""
        }
    }
}
