//
//  SignupFormModelValidator.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/25.
//

import XCTest
@testable import UnitTest

class SignupFormModelValidatorTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSignFormModelValidator_WhenValidFirstNameProvided_ShouldReturnTrue() {
        // Arrange
        let sut = SignupFormModelValidator()
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "")
        
        // Assert
        XCTAssertTrue(isFirstNameValid, "The isFirstNameValid() should have returned TRUE for a valid first name but returned FALSE")
    }
    
    func testSignupFormModelValiator_WhenTooShortFirstNameProvided_ShouldReturnFalse() {
        
        // Arrange
        // sut = system under test
        let sut = SignupFormModelValidator()
        
        // Act
        let isFirstNameValid = sut.isFirstNameValid(firstName: "S")
        
        // Assert
        XCAssrtFalse(isFirstNameValid, "The isFirstNameValid() should have returned FALSE for a first name that is shorter than 2 characters but it has returned TRUE")
    }
}
