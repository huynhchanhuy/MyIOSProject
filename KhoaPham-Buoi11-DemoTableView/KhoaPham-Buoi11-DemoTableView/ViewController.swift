//
//  ViewController.swift
//  KhoaPham-Buoi11-DemoTableView
//
//  Created by OSXVN on 10/29/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var bienDB:NSUserDefaults = NSUserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        var row = bienDB.objectForKey("row") as! Int
        print(arrND[row])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

