//
//  AddChannelVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 6/6/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()

    
    }
    
    func setUpView() {
        let closedTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closedTap(_:)))
        bgView.addGestureRecognizer(closedTouch)
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : EyYoPurplePlaceHolder])
          chanDescription.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor : EyYoPurplePlaceHolder])
    }
    
    @objc func closedTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
    
// outlets

    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var chanDescription: UITextField!
    @IBOutlet weak var bgView: UIView!
    
// actions
    
    @IBAction func closedModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        
        //do something
    }
}
