//
//  JobfestVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 29/04/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class JobfestVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    @IBOutlet weak var tableViewJobs: UITableView!
    
    
    var resultSearchController: UISearchController? = nil
    
    var userInput = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewJobs.layer.borderColor = UIColor.gray.cgColor
        tableViewJobs.layer.borderWidth = 0.2
        tableViewJobs.layer.cornerRadius = tableViewJobs.frame.height / 30
        
    }
    

    

    // Mark : TableViewDelegate Protocol
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewJobs.dequeueReusableCell(withIdentifier: "recentCell", for: indexPath) as! recentsJobsTVC
        
        cell.logoCompany.layer.cornerRadius = cell.logoCompany.frame.height / 2
        cell.logoCompany.clipsToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        performSegue(withIdentifier: "jobDetailSegue", sender: self)
    }
}
