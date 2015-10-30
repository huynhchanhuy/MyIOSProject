//
//  ViewController.swift
//  khoapham-buoi3-excercise
//
//  Created by OSXVN on 10/10/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //http://www.drewag.me/posts/what-is-an-optional-in-swift
    var imgview:UIImageView!
    
    @IBAction func random(sender: AnyObject) {
        
        if let subview = imgview{
            subview.removeFromSuperview()
            //print(unsafeAddressOf(subview))
            //print(unsafeAddressOf(imgview!))
        }
        
        let frame_width:CGFloat = 50
        let frame_height:CGFloat = 50
        
        let x_frame:CGFloat = CGFloat(arc4random_uniform(UInt32(self.view.frame.width-frame_width)))
        let y_frame:CGFloat = CGFloat(arc4random_uniform(UInt32(self.view.frame.height-frame_height)))
        
        let url:NSURL = NSURL(string:"http://trithucsong.com/data/trithucsong_vanhoa/data/van-hoa-alotin-vn-images-van-hoa-nghe-thuat/alotin.vn_1404270588_048bd9c3e598d9a38aad3103a5b642b0.jpg")!
        let data:NSData = NSData(contentsOfURL : url)!
        
        imgview = UIImageView(frame: CGRectMake(x_frame, y_frame, frame_width, frame_height))
        //imgview?.image = UIImage(named: "Red_button.png")

        imgview?.image = UIImage(data: data)
        self.view.addSubview(imgview!)
        
        //if let subview2 = imgview{
            //subview2.image = UIImage(named: "Red_button.png")
            //self.view.addSubview(subview2)
        //}
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

