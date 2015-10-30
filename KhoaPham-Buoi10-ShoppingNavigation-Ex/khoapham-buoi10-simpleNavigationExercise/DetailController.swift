//
//  DetailController.swift
//  KhoaPham-Buoi10-ShoppingNavigation-Ex
//
//  Created by OSXVN on 10/29/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    var deliverVar1:NSUserDefaults = NSUserDefaults()

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var btnBuy: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        var index:String = deliverVar1.objectForKey("index") as! String
        
        var i = Int(index)
        
        lblName.text = ProductList[i!]["name"]
        lblPrice.text = ProductList[i!]["price"]
        img.image = UIImage(named:ProductList[i!]["id"]!)
        
    }

    @IBAction func clickBuy(sender: AnyObject) {
        
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
