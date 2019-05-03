//
//  RequestVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 02/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class RequestVC: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet weak var requestTable: UITableView!
    
    var arrayName = ["Antonius", "Fahri", "Cahaya Ramadhan"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        requestTable.layer.borderColor = UIColor.gray.cgColor
        requestTable.layer.borderWidth = 0.2
        requestTable.layer.cornerRadius = requestTable.frame.height / 30
        requestTable.rowHeight = UITableView.automaticDimension
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = requestTable.dequeueReusableCell(withIdentifier: "requestCell", for: indexPath) as? RequestTVC else { return UITableViewCell() }
        
        cell.imageRequest.layer.cornerRadius = cell.imageRequest.frame.height / 2
        cell.imageRequest.clipsToBounds = true
        cell.imageMutual1.layer.cornerRadius = cell.imageMutual1.frame.height / 2
        cell.imageMutual1.clipsToBounds = true
        cell.imageMutual2.layer.cornerRadius = cell.imageMutual2.frame.height / 2
        cell.imageMutual2.clipsToBounds = true
        
        cell.nameLabel.text = arrayName[indexPath.row]
        
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
