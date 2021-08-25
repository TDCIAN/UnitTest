//
//  SignupWebServiceTests.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/25.
//

import XCTest
@testable import UnitTest

class SignupWebServiceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignupWebService_WhenGivenSuccessfulResponse_ReturnsSuccess() {
        // Arrange
        let sut = SignupWebService()
        let signFormRequestModel = SignupFormRequestModel(firstName: "Sergey", lastName: "Kim", email: "test@test.com", password: "12345678")
        sut.signup(withForm: signFormRequestModel)
    }

}
