//
//  FriendsVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 02/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class FriendsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    let menuArray = ["SEARCH","REQUEST", "FRIENDS"]

    @IBOutlet weak var friendsMenu: UICollectionView!
    @IBOutlet weak var searchPage: UIView!
    @IBOutlet weak var requestPage: UIView!
    @IBOutlet weak var friendsPage: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        friendsMenu.layer.borderColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        friendsMenu.layer.borderWidth = 0.5
        friendsMenu.layer.shadowOpacity = 1
        friendsMenu.layer.masksToBounds = false
        friendsMenu.layer.shadowOffset = CGSize(width: 0, height: 3)
        friendsMenu.layer.shadowRadius = 2
        friendsMenu.layer.shadowOpacity = 0.2
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return menuArray.count
        
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as? CollectionViewCell else { return UICollectionViewCell() }
        
        cell.menuName.text = menuArray[indexPath.row]
        
        
        
        if cell.isSelected {
            cell.menuName.textColor = #colorLiteral(red: 0.007843137255, green: 0.5568627451, blue: 0.8352941176, alpha: 1)
        }else {
           cell.menuName.textColor = #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1)
        }

        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedCell: CollectionViewCell = friendsMenu.cellForItem(at: indexPath) as! CollectionViewCell

        
        if selectedCell.menuName.text == "SEARCH" {
            searchPage.alpha = 1
            requestPage.alpha = 0
            friendsPage.alpha = 0
        } else if selectedCell.menuName.text == "REQUEST" {
            searchPage.alpha = 0
            requestPage.alpha = 1
            friendsPage.alpha = 0
        } else {
            searchPage.alpha = 0
            requestPage.alpha = 0
            friendsPage.alpha = 1
        }
        
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let yourWidth = UIScreen.main.bounds.width/3.0 - 6
        let yourHeight = yourWidth
        
        return CGSize(width: yourWidth, height: yourHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let diselectedCell: CollectionViewCell = friendsMenu.cellForItem(at: indexPath) as! CollectionViewCell
        
        if diselectedCell.isSelected == false {
            diselectedCell.menuName.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
            diselectedCell.menuName.font = UIFont(name: "AvenirNext-Regular", size: 14)
        }
        
        if friendsMenu.cellForItem(at: indexPath) != nil {
            
            diselectedCell.menuName.textColor = #colorLiteral(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let indexPathForFirstRow = IndexPath(row: 0, section: 0)
        friendsMenu.selectItem(at: indexPathForFirstRow, animated: true, scrollPosition: [])
        collectionView(friendsMenu, didSelectItemAt: indexPathForFirstRow)
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
