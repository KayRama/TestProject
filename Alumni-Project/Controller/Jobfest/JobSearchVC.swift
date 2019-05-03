//
//  JobSearchVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 30/04/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class JobSearchVC: UIViewController, UISearchResultsUpdating, UISearchBarDelegate {

    
     var resultSearchController:UISearchController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let locationSearchTable = storyboard!.instantiateViewController(withIdentifier: "JobResultTable") as! JobResultTable
        resultSearchController = UISearchController(searchResultsController: locationSearchTable)
        resultSearchController?.searchResultsUpdater = locationSearchTable as! UISearchResultsUpdating
        
        let searchBar = resultSearchController!.searchBar
        searchBar.sizeToFit()
        searchBar.placeholder = "Enter job keyword"
        navigationItem.titleView = resultSearchController?.searchBar
        
        resultSearchController?.hidesNavigationBarDuringPresentation = true
        resultSearchController?.dimsBackgroundDuringPresentation = true
        
        definesPresentationContext = true
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
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
