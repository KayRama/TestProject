//
//  CollectionViewCell.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 02/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuName: UILabel!
    
    override var isSelected: Bool {
        didSet {
            menuName.textColor = #colorLiteral(red: 0.007843137255, green: 0.5568627451, blue: 0.8352941176, alpha: 1)
            menuName.font = UIFont.boldSystemFont(ofSize: 14.0)
        }
    }
}
