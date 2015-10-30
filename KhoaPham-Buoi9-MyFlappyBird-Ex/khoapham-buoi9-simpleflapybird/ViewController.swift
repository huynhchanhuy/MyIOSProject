//
//  ViewController.swift
//  khoapham-buoi9-simpleflapybird
//
//  Created by OSXVN on 10/25/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var imgSpritesheet:UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgSpritesheet = UIImageView(frame:CGRectMake(0, 0, 400, 400))
        imgSpritesheet.image = UIImage(named: "spritesheet")
        //imgSpritesheet.contentMode = .ScaleAspectFit
        //self.view.addSubview(imgSpritesheet)
        
        var size = imgSpritesheet.frame.size
        var rect = CGRectMake(size.width / 4, size.height / 4, (size.width / 2), (size.height / 2))
        
        UIGraphicsBeginImageContextWithOptions(rect.size, true, 1)
        imgSpritesheet.drawRect(rect)
        var result = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext();
        
        self.view.addSubview(imgSpritesheet)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
