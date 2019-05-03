//
//  NotificationVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 02/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class NotificationVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var newTableView: UITableView!
    @IBOutlet weak var earlierTableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        newTableView.layer.borderColor = UIColor.gray.cgColor
        newTableView.layer.borderWidth = 0.2
        newTableView.layer.cornerRadius = newTableView.frame.height / 30
        
        earlierTableView.layer.borderColor = UIColor.gray.cgColor
        earlierTableView.layer.borderWidth = 0.2
        earlierTableView.layer.cornerRadius = earlierTableView.frame.height / 30


        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1 {
            return 3
        } else if tableView.tag == 2 {
            return 10
        } else {
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == newTableView {
            
            let cell = newTableView.dequeueReusableCell(withIdentifier: "newCell", for: indexPath) as! NewCell
        
            cell.profileNotifNew.layer.cornerRadius = cell.profileNotifNew.frame.height / 2
            cell.profileNotifNew.clipsToBounds = true
        
            return cell
            
        } else if tableView == earlierTableView {
            let cell = earlierTableView.dequeueReusableCell(withIdentifier: "earlierCell", for: indexPath) as! EarlierCell
            
            cell.photoNotifEarlier.layer.cornerRadius = cell.photoNotifEarlier.frame.height / 2
            cell.photoNotifEarlier.clipsToBounds = true
            
            return cell
        }
        
        return UITableViewCell()
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
