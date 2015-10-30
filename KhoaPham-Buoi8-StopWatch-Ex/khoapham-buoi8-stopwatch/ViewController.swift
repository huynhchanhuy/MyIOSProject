//
//  ViewController.swift
//  khoapham-buoi8-stopwatch
//
//  Created by OSXVN on 10/25/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer:NSTimer!
    var TIME:NSTimeInterval = 0.01
    var iTick:Int = 0
    var iSeconds:Int = 0
    var fStart:Bool = false
    var imgClick:UIImage = UIImage(named: "click2")!
    var imgClear:UIImage = UIImage(named: "clear")!
    var btnClick:UIButton = UIButton(frame: CGRectMake(80, 350, 75, 75))
    var btnClear:UIButton = UIButton(frame: CGRectMake(170, 350, 75, 75))
    
    @IBOutlet weak var lblSecond: UILabel!
    @IBOutlet weak var lblTick: UILabel!
    
    func btnClear_TouchUp() {
        Clear()
    }
    
    func btnClick_TouchUp() {
        if(fStart == true){
            Pause()
        }else{
            Start()
        }
        fStart = !fStart

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }
    
    func Clear(){
        if(timer != nil){
            timer.invalidate()
            timer = nil
        }
        iTick = 0
        iSeconds = 0
        fStart = false
        lblSecond.text = "0"
        lblTick.text = "0"
    }
    
    func Pause(){
        timer.invalidate()
        timer = nil
    }
    
    func Start(){
        timer = NSTimer.scheduledTimerWithTimeInterval(TIME,target:self,selector: Selector("Count"), userInfo: nil, repeats: true)
    }
    
    func Count(){
        iTick++
        lblTick.text = String(iTick)
        if iTick == 100{
            iTick = 0
            iSeconds++
            lblSecond.text = String(iSeconds)
        }
    }
    
    func initView(){
        
        lblSecond.layer.borderWidth = 1
        lblTick.layer.borderWidth = 1
        
        btnClick.setImage(imgClick, forState: UIControlState.Normal)
        self.view.addSubview(btnClick)
        
        btnClear.setImage(imgClear, forState: UIControlState.Normal)
        self.view.addSubview(btnClear)
        
        btnClick.addTarget(self, action: "btnClick_TouchUp", forControlEvents: .TouchUpInside)
        btnClear.addTarget(self, action: "btnClear_TouchUp", forControlEvents: .TouchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

