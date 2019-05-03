//
//  JobDetailVC.swift
//  Alumni-Project
//
//  Created by Cahaya Ramadhan on 29/04/19.
//  Copyright © 2019 Cahaya Ramadhan. All rights reserved.
//

import UIKit

class JobDetailVC: UIViewController, UITableViewDataSource, UITableViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    

    @IBOutlet weak var tableOwnJob: UITableView!
    @IBOutlet weak var backgroundCover: UIImageView!
    @IBOutlet weak var logoCompany: UIImageView!
    @IBOutlet weak var nameCompany: UILabel!
    @IBOutlet weak var locationCompany: UILabel!
    @IBOutlet weak var filterType: UITextField!
    
    var dataType = ["Terbaru","Paling Sesuai"]
    var pickerType = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoCompany.layer.cornerRadius = logoCompany.frame.height / 2
        logoCompany.clipsToBounds = true
        
        tableOwnJob.layer.borderColor = UIColor.gray.cgColor
        tableOwnJob.layer.borderWidth = 0.2
        tableOwnJob.layer.cornerRadius = tableOwnJob.frame.height / 30
        
        addPickerType()
        // Do any additional setup after loading the view.
    }
    
    func addPickerType(){
        pickerType.delegate = self
        pickerType.dataSource = self
        filterType.inputView = pickerType
        
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let flexible = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(doneClick))

        toolbar.items = [flexible, doneButton]
        
        filterType.inputView = pickerType
        filterType.inputAccessoryView = toolbar
        
        
    }
    
    @objc func doneClick(){
        self.view.endEditing(true)
    }
    //    Mark : Protocol PickerView
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        var toReturn: Int = 0
        if pickerView == pickerType {
            toReturn = dataType.count
        }
        
        return toReturn
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if pickerView == pickerType{
            filterType.text = dataType[row]
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        var toReturn: String = ""
        
        if pickerView == pickerType {
            toReturn = dataType[row]
        }
        
        return toReturn
    }
    
    
    
    //    Mark : Protocol TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableOwnJob.dequeueReusableCell(withIdentifier: "jobCell", for: indexPath) as! recentJobsSelfTVC
        
        cell.imageCompany.layer.cornerRadius = cell.imageCompany.frame.height / 2
        cell.imageCompany.clipsToBounds = true
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath)
        
        performSegue(withIdentifier: "spesificJob", sender: self)
    }

}
