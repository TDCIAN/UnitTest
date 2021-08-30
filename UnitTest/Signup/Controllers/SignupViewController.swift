//
//  SignupViewController.swift
//  UnitTest
//
//  Created by 김정민 on 2021/08/27.
//

import UIKit

class SignupViewController: UIViewController {

    @IBOutlet weak var userFirstNameTextField: UITextField!
    @IBOutlet weak var userLastNameTextField: UITextField!
    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userRepeatPasswordTextField: UITextField!
    @IBOutlet weak var signupButton: UIButton!
    
    var signupPresenter: SignupPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if signupPresenter == nil {
            let signupModelValidator = SignupFormModelValidator()
            let webService = SignupWebService(urlString: SignupConstants.signupURLString)
            signupPresenter = SignupPresenter(formModelValidator: signupModelValidator, webservice: webService, delegate: self)
        }
        
    }
    
    @IBAction func signupButtonTapped(_ sender: Any) {
        let signupFormModel = SignupFormModel(firstName: userFirstNameTextField.text ?? "", lastName: userLastNameTextField.text ?? "", email: userEmailTextField.text ?? "", password: userPasswordTextField.text ?? "", repeatPassword: userRepeatPasswordTextField.text ?? "")
        signupPresenter?.processUserSignup(formModel: signupFormModel)
        print("signupButton Tapped!!!!")
    }
    
}

extension SignupViewController: SignupViewDelegateProtocol {
    func successfullSignup() {
        
    }
    
    func errorHandler(error: SignupError) {
        
    }
    
    
}
