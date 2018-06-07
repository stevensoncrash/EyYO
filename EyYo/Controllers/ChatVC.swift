//
//  ChatVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/8/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var menuBtn: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
 
        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        
        if AuthService.instance.isLoggedIn {
            AuthService.instance.findUserByEmail { (success) in
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
            }
        }
        MessageService.instance.findAllChannel { (success) in
    
        }
    }



}
