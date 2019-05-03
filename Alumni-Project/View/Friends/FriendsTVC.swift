//
//  FriendsTVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 02/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class FriendsTVC: UITableViewCell {

    @IBOutlet weak var friendsImage: UIImageView!
    @IBOutlet weak var nameFriends: UILabel!
    @IBOutlet weak var mutualFriendsLabel: UILabel!
    @IBOutlet weak var mutualImage2: UIImageView!
    @IBOutlet weak var mutualImage1: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
