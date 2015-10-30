//
//  ViewController.swift
//  khoapham-buoi4-demoswitch
//
//  Created by OSXVN on 10/13/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var swtProChon: UISwitch!
    @IBAction func swtChon(sender: AnyObject) {
        if swtProChon.on {
            print("Open")
            self.view.backgroundColor = UIColor(red:0.1, green:0.1, blue:0.5, alpha:0.5)
        }else{
            print("Closed")
            self.view.backgroundColor = UIColor(patternImage:UIImage(named:"Red_button.png")!)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

