//
//  ViewController.swift
//  khoapham-buoi9-demoimage
//
//  Created by OSXVN on 10/24/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var img:UIImageView = UIImageView(frame: CGRectMake(50, 20, 200, 200))
        img.image = UIImage(named: "images.jpg")
        self.view.addSubview(img)
        
        img.layer.cornerRadius = 100 // 1/2 chieu dai
        img.layer.masksToBounds = false
        img.clipsToBounds = true
        
        var img2:UIImageView = UIImageView(frame: CGRectMake(50, 240, 200, 200))
        img2.image = UIImage(named: "images.jpg")
        self.view.addSubview(img2)
        
        img2.layer.cornerRadius = 100 // 1/2 chieu dai
        img2.clipsToBounds = true
        
        //img.layer.borderColor = UIColor.greenColor().CGColor
        //img.layer.borderWidth = 4.0
        
        var img3:UIImageView = UIImageView(frame: CGRectMake(50, 460, 200, 200))
        img3.image = UIImage(named: "images.jpg")
        self.view.addSubview(img3)
    }
    
    //BT ve nha: scale hinh vo hinh tron

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

