//
//  ViewController.swift
//  khoapham-buoi9-demolabel
//
//  Created by OSXVN on 10/25/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var lblTitle:UILabel = UILabel(frame: CGRectMake(0, 0, 100, 50))
    var btnClick:UIButton = UIButton(frame: CGRectMake(100, 0, 100, 50))
    var btnClick2:UIButton = UIButton(frame: CGRectMake(200, 0, 100, 50))
    var btnClick3:UIButton = UIButton(frame: CGRectMake(200, 200, 100, 50))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = "Title"
        self.view.addSubview(lblTitle)
        
        btnClick.backgroundColor = UIColor.blackColor()
        btnClick.setTitle("Click", forState: UIControlState.Normal)
        btnClick.addTarget(self, action: "clickDi:", forControlEvents: .TouchUpInside)
        btnClick.tag = 1
        self.view.addSubview(btnClick)
        
        btnClick2.backgroundColor = UIColor.redColor()
        btnClick2.setTitle("Click", forState: UIControlState.Normal)
        // co tham so --> action:"ClickDi:" --> ko co tham so thi khoi
        btnClick2.addTarget(self, action: "clickDi:", forControlEvents: .TouchUpInside)
        btnClick2.setTitleColor(UIColor.greenColor(), forState: UIControlState.Normal)
        btnClick2.setTitleColor(UIColor.blueColor(), forState: UIControlState.Highlighted)
        btnClick2.tag = 2
        self.view.addSubview(btnClick2)
        
        btnClick3.setImage(UIImage(named: "Green_button"), forState: UIControlState.Normal)
        self.view.addSubview(btnClick3)
        
    }
    
    func clickDi(but:UIButton){
        if but.tag == 1{
            print("Da Click 1")
            lblTitle.text="Da Click"
        } else if but.tag == 2{
            print("da click 2")
            lblTitle.text = "Da click 2"
        }
    }



}

