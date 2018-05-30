//
//  ProfileVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/29/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

        // Do any additional setup after loading the view.
    }
    //Outlets
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var bgView: UIView!
    
    //Actions
   
    @IBAction func closedModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func logouBtnPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    
    func setUpView() {
        userName.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        profileImage.image = UIImage(named: UserDataService.instance.avatarName)
        profileImage.backgroundColor =
            UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_recognizer:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_recognizer: UITapGestureRecognizer){
        dismiss(animated: true, completion: nil)
    }
    
    
}
