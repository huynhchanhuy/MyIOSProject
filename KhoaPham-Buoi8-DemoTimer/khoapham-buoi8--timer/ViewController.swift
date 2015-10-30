//
//  ViewController.swift
//  khoapham-buoi8--timer
//
//  Created by OSXVN on 10/22/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImg: UIImageView!
    var i=0
    @IBOutlet weak var btn: UIButton!
    @IBAction func btnJump(sender: AnyObject) {
        myImg.frame.origin.y = myImg.frame.origin.y-50
        btn.frame.origin.y=btn.frame.origin.y-50
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var timer:NSTimer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "tenfunc", userInfo: nil, repeats: true)
        myImg.contentMode = .ScaleAspectFill
        
    }
    
    func tenfunc(){
        //Run (1)
        myImg.image = UIImage(named: "Run (\(i)).png")
        i++
        if(i>=9){
            i=1
        }
        
        myImg.frame.origin.y=myImg.frame.origin.y+2
        myImg.frame.origin.x=myImg.frame.origin.x+2
        btn.frame.origin.x=btn.frame.origin.x+2
        btn.frame.origin.y=btn.frame.origin.y+2
        
    }


}

