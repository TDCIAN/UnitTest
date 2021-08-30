//
//  SignupViewControllerTests.swift
//  UnitTestTests
//
//  Created by 김정민 on 2021/08/27.
//

import XCTest
@testable import UnitTest

class SignupViewControllerTests: XCTestCase {
    
    var storyboard: UIStoryboard!
    var sut: SignupViewController!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(identifier: "SignupViewController") as SignupViewController
        sut?.loadViewIfNeeded()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        storyboard = nil
        sut = nil
    }

    func testSignupViewController_WhenCreated_HasRequiredTextFieldEmpty() throws {
        
        let firstNameTextField = try XCTUnwrap(sut.userFirstNameTextField, "The userFirstNameTextField is not connected to an IBOutlet")
        let lastNameTextField = try XCTUnwrap(sut.userLastNameTextField, "The lastNameTextField is not connected to an IBOutlet")
        let emailTextField = try XCTUnwrap(sut.userEmailTextField, "The emailTextField is not connected to an IBOutlet")
        let passowrdTextField = try XCTUnwrap(sut.userPasswordTextField, "The passwordTextField is not connected to an IBOutlet")
        let repeatPasswordTextField = try XCTUnwrap(sut.userRepeatPasswordTextField, "The repeatPasswordTextField is not connected to an IBOutlet")
        
        XCTAssertEqual(firstNameTextField.text, "", "First name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(lastNameTextField.text, "", "Last name text field was not empty when the view controller initially loaded")
        XCTAssertEqual(emailTextField.text, "", "Email text field was not empty when the view controller initially loaded")
        XCTAssertEqual(passowrdTextField.text, "", "Password text field was not empty when the view controller initially loaded")
        XCTAssertEqual(repeatPasswordTextField.text, "", "Repeat Password text field was not empty when the view controller initially loaded")
    }
    
    func testViewController_WhenCreated_HasSignupButtonAndAction() throws {
        let signupButton: UIButton = try XCTUnwrap(sut.signupButton, "Signup button does not have a referencing outlet")
        let signupButtonActions = try XCTUnwrap(signupButton.actions(forTarget: sut, forControlEvent: .touchUpInside), "Signup button does not have any actions assigned to it")
        
        XCTAssertEqual(signupButtonActions.count, 1, "Signup button does not have any actions assigned to it")
        XCTAssertEqual(signupButtonActions.first, "signupButtonTapped:", "There is no action with a name signupButtonTapped assigned to signup button")
    }
    
    func testViewController_WhenSignupButtonTapped_InvokesSignupProcess() {
        // Arrange
        let mockSignupModelValidator = MockSignupModelValidator()
        let mockSignupWebService = MockSignupWebService()
        let mockSignupViewDelegate = MockSignupViewDelegate()
        
        let mockSignupPresenter = MockSignupPresenter(
            formModelValidator: mockSignupModelValidator,
            webservice: mockSignupWebService,
            delegate: mockSignupViewDelegate)
        sut.signupPresenter = mockSignupPresenter
        // Act
        sut.signupButton.sendActions(for: .touchUpInside)
        
        // Assert
        XCTAssertTrue(mockSignupPresenter.processUserSignupCalled, "The processUserSignup() method was not called on a Presenter object when the signup button was tapped in a SignupViewController")
    }
}
