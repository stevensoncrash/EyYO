//
//  GradientView.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/9/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

@IBDesignable // allowing real time work in storyboard
class GradientView: UIView {
    
// variables allowing to change in storyboard dynamically
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1){
        didSet {
            self.setNeedsLayout()
        }
    
    }
    // subview thats called whenever the Inspectables are changed
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
