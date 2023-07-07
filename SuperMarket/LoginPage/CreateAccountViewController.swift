//
//  CreateAccountViewController.swift
//  loginWithFireBase
//
//  Created by Rajeev on 21/04/23.
//

import UIKit
import Firebase

class CreateAccountViewController: UIViewController {

    
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet weak var createAccountsignupBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      layout()
    }
    

    
    @IBAction func signupClick(_ sender: UIButton)
    {
        
        guard let email = emailTextField.text else{ return }
        guard let password = passwordTextField.text else {return}
        
        Auth.auth().createUser(withEmail: email, password: password) { firebaseResult, error in
            if error != nil
            {
                print("error")
            }
            else
            {
                self.performSegue(withIdentifier:"goToNext", sender: self)
            }
        }
    }
    func layout()
    {
        emailTextField.layer.cornerRadius = 40
        passwordTextField.layer.cornerRadius = 40
        createAccountsignupBtn.layer.cornerRadius = 20
    }
    

}
