//
//  RoundedButton.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/16/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
            
        }
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
        
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    
    
    
}
