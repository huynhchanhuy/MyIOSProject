//
//  ViewController.swift
//  khoapham-buoi10-demoview
//
//  Created by OSXVN on 10/27/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtND: UITextField!
    var bienDB:NSUserDefaults = NSUserDefaults()
    //var arrND:[String] = ["AAA","BBB","CCC","DDD","EEE"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Truoc khi chuyen man hinh khac, se goi ham nay
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        bienDB.setValue(txtND.text, forKey: "bdb")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

