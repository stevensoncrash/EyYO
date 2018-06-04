//
//  ChannelCell.swift
//  EyYo
//
//  Created by Stephen Reyes on 6/4/18.
//  Copyright © 2018 Stephen Reyes. All rights reserved.
//

import UIKit

class ChannelCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //outlets

    @IBOutlet weak var channelName: UILabel!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if selected {
            self.layer.backgroundColor = UIColor(white: 1, alpha: 0.2).cgColor
        } else {
            self.layer.backgroundColor = UIColor.clear.cgColor
        }

        // Configure the view for the selected state
    }
    func configuerCell(channel: Channel){
        let title = channel.name ?? ""
        channelName.text = "#\(title)"
        
    }

}
