//
//  recentsJobsTVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 29/04/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class recentsJobsTVC: UITableViewCell {

    @IBOutlet weak var logoCompany: UIImageView!
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var companyName: UILabel!
    @IBOutlet weak var location: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
