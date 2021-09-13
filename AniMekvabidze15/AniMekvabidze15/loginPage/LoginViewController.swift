//
//  LoginViewController.swift
//  AniMekvabidze15
//
//  Created by Mac User on 5/19/21.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        
        
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        
        let userEmailStored = UserDefaults.standard.string(forKey: "userEmail")
        
        let userPasswordStored = UserDefaults.standard.string(forKey: "userPassword")
                
        if(userEmailStored == userEmail)
        {
            if(userPasswordStored == userPassword)
            {
                // Login is successfull
                UserDefaults.standard.set(true,forKey:"isUserLoggedIn")
                UserDefaults.standard.synchronize()
                
                self.dismiss(animated: true, completion:nil)
            }
        }
    }
    
    
    

  
}
