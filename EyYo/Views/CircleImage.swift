//
//  CircleImage.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/23/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {
    
    override func awakeFromNib() {
        setUpView()
    }

    func setUpView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    override func prepareForInterfaceBuilder() {
        super .prepareForInterfaceBuilder() 
        setUpView()
    }
}
