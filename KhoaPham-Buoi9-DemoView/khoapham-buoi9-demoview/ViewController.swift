//
//  ViewController.swift
//  khoapham-buoi9-demoview
//
//  Created by OSXVN on 10/24/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var view1:UIView = UIView(frame: CGRectMake(50, 50, 200, 200))
        view1.backgroundColor = UIColor.redColor()
        
        self.view.addSubview(view1)
        
        // Vi tri so voi thang cha
        var view2:UIView = UIView(frame: CGRectMake(0, 0, 50, 50))
        view2.backgroundColor = UIColor.greenColor()
        
        view1.addSubview(view2)
        
        var view3:UIView = UIView(frame: CGRectMake(100, 0, 50, 50))
        view3.backgroundColor = UIColor.yellowColor()
        
        view1.addSubview(view3)
        
        // Bai 3 Den chop tat
        // Bai 2 ve cai view
        // Bai 1 Bo hinh vo hinh tron
        
    }

}

