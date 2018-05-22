//
//  AvatarCell.swift
//  EyYo
//
//  Created by Stephen Reyes on 5/21/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    

    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUpView()
    }
    
    func setUpView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
}
