//
//  FriendsPageVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 02/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class FriendsPageVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var friendListTable: UITableView!
    
    var friendsArray = ["Cahaya Ramadhan", "Wendyliga", "Ratna Sari Dewi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        friendListTable.layer.borderColor = UIColor.gray.cgColor
        friendListTable.layer.borderWidth = 0.2
        friendListTable.layer.cornerRadius = friendListTable.frame.height / 30
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = friendListTable.dequeueReusableCell(withIdentifier: "listCell", for: indexPath) as? FriendsTVC else { return UITableViewCell() }
        
        cell.friendsImage.layer.cornerRadius = cell.friendsImage.frame.height / 2
        cell.friendsImage.clipsToBounds = true
        cell.mutualImage1.layer.cornerRadius = cell.mutualImage1.frame.height / 2
        cell.mutualImage1.clipsToBounds = true
        cell.mutualImage2.layer.cornerRadius = cell.mutualImage2.frame.height / 2
        cell.mutualImage2.clipsToBounds = true
        
        cell.nameFriends.text = friendsArray[indexPath.row]
        
        return cell
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
