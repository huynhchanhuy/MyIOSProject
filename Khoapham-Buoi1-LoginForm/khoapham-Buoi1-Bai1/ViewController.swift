//
//  ViewController.swift
//  khoapham-Buoi1-Bai1
//
//  Created by OSXVN on 10/6/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var txtUsername: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPhone: UITextField!
    @IBOutlet weak var lblNoiDung: UILabel!
    
    var strUsername : String = ""
    var strPassword : String = ""
    var strEmail : String = ""
    var strPhone : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //lblNoiDung.text = "HELLO"
        
        
    }
    
    
    @IBAction func btnTouchOutside(sender: AnyObject) {
        //lblNoiDung.text = "Touch Outside"
    }
    
    @IBAction func btnTouchDown(sender: AnyObject) {
        lblNoiDung.text = "Touch Down"
    }
    
    @IBAction func btnTouchCancle(sender: AnyObject) {
        lblNoiDung.text = "Touch Cancel"
    }
    
    @IBAction func btnTouchInside(sender: AnyObject) {
        strUsername = txtUsername.text!
        strPassword = txtPassword.text!
        strEmail = txtEmail.text!
        strPhone = txtPhone.text!
        
        
        lblNoiDung.text = "NAME: " + strUsername + "\nPASSWORD: " + strPassword + "\nEMAIL: " + strEmail + "\nPHONE: " + strPhone
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

