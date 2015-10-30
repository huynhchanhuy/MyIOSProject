//
//  ViewController.swift
//  myproj-ex-01
//
//  Created by OSXVN on 10/6/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTittle: UILabel!
    @IBOutlet weak var btnClick: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnClick(sender: AnyObject) {
        lblTittle.text = "Hello world"
    }


}

