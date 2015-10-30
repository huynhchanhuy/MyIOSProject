//
//  ViewScreen2.swift
//  khoapham-buoi10-demoview
//
//  Created by OSXVN on 10/27/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewScreen2: UIViewController {

    @IBOutlet weak var lblND: UILabel!
    var bienDB:NSUserDefaults = NSUserDefaults()
    override func viewDidLoad() {
        super.viewDidLoad()
        var giatri:String = bienDB.objectForKey("bdb") as! String
        lblND.text = giatri
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
