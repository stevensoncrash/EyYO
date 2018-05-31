//
//  LoginVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/14/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
   //actions
    @IBAction func createAccntBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    
    @IBAction func loginPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
        guard let email = usernameTxt.text, usernameTxt.text != ""
            else {return}
        guard let password = passwordTxt.text, passwordTxt.text != ""
            else {return}
        
        AuthServices.instance.loginUser(email: email, password: password) { (success) in
            if success {
                AuthServices.instance.findUserByEmail(completion: { (success) in
                    if success {
                        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                        self.spinner.isHidden = true
                        self.spinner.stopAnimating()
                        self.dismiss(animated: true , completion: nil)
                    }
                })
            }
        }
        
    }

    
    
    @IBAction func closedBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

    }
    
    func setUpView(){
        
         spinner.isHidden = true
         usernameTxt.attributedPlaceholder = NSAttributedString(string:"email" , attributes: [NSAttributedStringKey.foregroundColor: EyYoPurplePlaceHolder] )
         passwordTxt.attributedPlaceholder = NSAttributedString(string:"password" , attributes: [NSAttributedStringKey.foregroundColor: EyYoPurplePlaceHolder] )
        
        
        
        
        
    }
    
    // outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    
}
