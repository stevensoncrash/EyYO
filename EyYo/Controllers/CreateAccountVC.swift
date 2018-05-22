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
    
    
    // Variables
    
    var avatarName = "profileDefault"
    
    // default grey color
    var avatarColor = "[0.5,0.5,0.5,1]"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //actions
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let name = usernameTxt.text, usernameTxt.text != "" else {return}
        guard let email = emailTxt.text, emailTxt.text != "" else {return}
        guard let password = passwordTxt.text, passwordTxt.text != "" else {return}
        
        AuthServices.instance.registerUser(email: email, password: password)
        { (success) in
            if success {
        
                AuthServices.instance.loginUser(email: email, password: password, completion: { (success) in
                    if success {
                        AuthServices.instance.createUser(name: name , email: email , avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success {
                                print(UserDataService.instance.name, UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                            }
                        })
                    }
                    else {
                        
                    }
                })
            }
        }
    }


    @IBAction func generateBGPressed(_ sender: Any) {
        //do something
    }
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR_PICKER, sender: nil)
    }
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
