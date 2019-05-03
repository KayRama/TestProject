//
//  SearchVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 03/05/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class SearchVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var searchListTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchListTable.layer.borderColor = UIColor.gray.cgColor
        searchListTable.layer.borderWidth = 0.2
        searchListTable.layer.cornerRadius = searchListTable.frame.height / 30
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = searchListTable.dequeueReusableCell(withIdentifier: "searchPage", for: indexPath) as? SearchTVC else { return UITableViewCell() }
        
        return cell
    }
    
    override var preferredContentSize: CGSize {
        get {
            self.searchListTable.layoutIfNeeded()
            return self.searchListTable.contentSize
        }
        set {}
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
