//
//  CreateAccountVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/15/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // outlets

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //actions
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text, emailTxt.text != "" else
            {return}
        
        guard let password = passwordTxt.text, passwordTxt.text != "" else
        
        {return}
        
        AuthServices.instance.registerUser(email: email, password: password)
        { (success) in
            if success {
                print("registered user!")
            }
        }
    }


    @IBAction func generateBGPressed(_ sender: Any) {
    }
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
    }
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
