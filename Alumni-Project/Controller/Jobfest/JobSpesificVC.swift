//
//  JobSpesificVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 30/04/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class JobSpesificVC: UIViewController {
    
    @IBOutlet weak var requirementsLabel: UILabel!
    
    var arrayOfLines = ["An interior design/architectural background, preferably with a related degree.", "Experience in creating design schemes [residential and/or commercial.", "Construction drafting / detailing & producing high quality 3D visuals are essential skills.", "Project management and client facing skills would be hugely beneficial."]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for value in arrayOfLines {
           requirementsLabel.text = requirementsLabel.text!  + " • " + value + "\n"
        }
        // Do any additional setup after loading the view.
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
