//
//  ViewController.swift
//  AniMekvabidze15
//
//  Created by Mac User on 5/19/21.
//

import UIKit

class ViewController: UIViewController {



    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


    override func viewDidAppear(_ animated: Bool) {
        
        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        
        if(!isUserLoggedIn)
        {
            self.performSegue(withIdentifier: "loginViewSegue", sender: self)
        }
            
    }
    
    
    
    @IBAction func logoutButtonTapped(_ sender: Any) {
        
        
        UserDefaults.standard.set(false,forKey:"isUserLoggedIn")
        UserDefaults.standard.synchronize()
        
        self.performSegue(withIdentifier: "loginViewSegue", sender: self)
    }
    
        
        
}
    


