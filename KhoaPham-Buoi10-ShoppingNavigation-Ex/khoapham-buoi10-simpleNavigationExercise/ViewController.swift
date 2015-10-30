//
//  ViewController.swift
//  khoapham-buoi10-simpleNavigationExercise
//
//  Created by OSXVN on 10/29/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

var UserInfo:[String:String] = [
    "id":"1",
    "name":"Huynh Chan Huy",
    "uname":"admin",
    "site":"http://huyhuynh.com",
    "status":"Active"
]

var ProductList:[[String:String]] = [
    [
        "id":"0001",
        "name":"Áo Đầm",
        "price":"200.000",
        "vendor":"Huy Huynh"
    ],[
        "id":"0002",
        "name":"Váy Điệu",
        "price":"200.000",
        "vendor":"Huy Huynh"
    ],[
        "id":"0003",
        "name":"Áo Thời Trang",
        "price":"200.000",
        "vendor":"Huy Huynh"
    ],[
        "id":"0004",
        "name":"Áo Ren",
        "price":"200.000",
        "vendor":"Huy Huynh"
    ]
    
]	

class ViewController: UIViewController {
    
    @IBOutlet weak var lblId: UILabel!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblUs: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        lblId.text = UserInfo["id"]
        lblName.text = UserInfo["name"]
        lblUs.text = UserInfo["uname"]
        lblGender.text = UserInfo["site"]
        lblStatus.text = UserInfo["status"]
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

