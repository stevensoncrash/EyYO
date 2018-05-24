//
//  LoginVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/14/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBAction func createAccntBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
    
    
    @IBAction func closedBtnPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

    }
    
    func setUpView(){
        
         usernameTxt.attributedPlaceholder = NSAttributedString(string:"username" , attributes: [NSAttributedStringKey.foregroundColor: EyYoPurplePlaceHolder] )
         passwordTxt.attributedPlaceholder = NSAttributedString(string:"password" , attributes: [NSAttributedStringKey.foregroundColor: EyYoPurplePlaceHolder] )
        
        
        
    }
    
    // outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    
}
