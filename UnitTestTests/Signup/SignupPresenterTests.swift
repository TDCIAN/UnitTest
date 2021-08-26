//
//  SignupPresenterTests.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/26.
//

import XCTest
@testable import UnitTest

class SignupPresenterTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testSignupPresenter_WhenInformationProvided_WillValidateEachProperty() {
        // Arrange
        let signupFormModel = SignupFormModel(firstName: "Kim",
                                              lastName: "JM",
                                              email: "test@gmail.com",
                                              password: "12345678",
                                              repeatPassword: "12345678")
        
        let mockSignupModelValidator = MockSignupModelValidator()
        
        let sut = SignupPresenter()
        // Act
        sut.processUserSignup(formModel: signupFormModel)
        // Assert
        XCTAssertTrue(mockSignupModelValidator.isFirstNameValidated)
    }

}
