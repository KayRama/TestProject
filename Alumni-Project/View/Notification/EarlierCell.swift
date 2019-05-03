//
//  EarlierCell.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 02/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class EarlierCell: UITableViewCell {


    @IBOutlet weak var photoNotifEarlier: UIImageView!
    @IBOutlet weak var nameNotifEarlier: UILabel!
    @IBOutlet weak var timeNotifEarlier: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
