//
//  ViewController.swift
//  khoapham-buoi6-excercise
//
//  Created by OSXVN on 10/17/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var schedulePicker: UIPickerView!
    @IBOutlet weak var scheduleBtn: UIButton!
    @IBOutlet weak var msgLbl: UILabel!
    
    var col1:String!
    var col2:String!
    var col3:String!
    
    var arr : [[String]]  = [["HCM","Ha Noi","Da Nang"],["12:00","1:00","2:00"],["12:00","1:00","2:00"]]
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        schedulePicker.delegate = self
        schedulePicker.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClick(sender: AnyObject) {
        
        msgLbl.text = "Ban da den mua ve tu "+col1+" den "+col2+" vao luc "+col3
        
    }
    
    // column
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 3
    }
    // row
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr[component].count
    }
    // content
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[component][row]
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if (component == 0){
            col1 = arr[component][row]
        }else if(component == 1){
            col2 = arr[component][row]
        }else{
            col3 = arr[component][row]
        }
    }
    
    
    
}

