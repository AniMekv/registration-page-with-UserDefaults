//
//  RegisterPageViewController.swift
//  AniMekvabidze15
//
//  Created by Mac User on 5/19/21.
//

import UIKit

class RegisterPageViewController: UIViewController {

    
    @IBOutlet weak var userEmailTextField: UITextField!
   
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func registerButtonTapped(_ sender: Any) {
        let userEmail = userEmailTextField.text
        let userPassword = userPasswordTextField.text
        let userRepeatPassword = repeatPasswordTextField.text
        
   
        if userEmailTextField.text == ""  || userPasswordTextField.text == "" || repeatPasswordTextField.text == "" {
            
            displayMyAlertMessage(userMessage: "All fields are required")
            return
        }
        
        if userPassword != userRepeatPassword
        {
            displayMyAlertMessage(userMessage: "Passwords do not match")
            return
        
        }
        
        
        UserDefaults.standard.setValue(userEmail, forKey: "userEmail")
        UserDefaults.standard.setValue(userPassword, forKey: "userPassword")
        UserDefaults.standard.synchronize()
        
        
            
        // alert message
        let myAlert = UIAlertController(title:"Alert", message:"Registration is successful", preferredStyle: UIAlertController.Style.alert)
        
        let okAction = UIAlertAction(title:"Ok", style:UIAlertAction.Style.default){ action in
            self.dismiss(animated: true, completion:nil)

        }
        myAlert.addAction(okAction)
        self.present(myAlert, animated:true, completion:nil)
    }
 
            
    
        
        func displayMyAlertMessage(userMessage:String)
        {
            let myAlert = UIAlertController(title:"Alert", message:userMessage, preferredStyle: UIAlertController.Style.alert)
            
            let okAction = UIAlertAction(title:"Ok", style:UIAlertAction.Style.default, handler:nil)
            
            myAlert.addAction(okAction)

            self.present(myAlert, animated:true, completion:nil)
            
        }
     
        func iHaveAnAccountButtonTapped(sender: AnyObject) {
            self.dismiss(animated: true, completion: nil)
        }
        
    

    
    
}

        
      
