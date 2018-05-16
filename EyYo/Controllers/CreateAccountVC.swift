//
//  CreateAccountVC.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/15/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closedPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
