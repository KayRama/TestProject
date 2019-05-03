//
//  recentJobsSelfTVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 29/04/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class recentJobsSelfTVC: UITableViewCell {

    @IBOutlet weak var imageCompany: UIImageView!
    @IBOutlet weak var nameCompany: UILabel!
    @IBOutlet weak var locationCompany: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
