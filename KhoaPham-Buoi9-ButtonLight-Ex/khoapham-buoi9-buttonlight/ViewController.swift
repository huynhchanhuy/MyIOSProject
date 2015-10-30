//
//  ViewController.swift
//  khoapham-buoi9-buttonlight
//
//  Created by OSXVN on 10/27/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ROW = 5
    var COL = 4
    
    
    var SIZE : [String:CGFloat] = ["height":30,"width":30]
    var SPACE:CGFloat = 30
    var INDENT = 50
    
    var arrBtn = [[UIButton]]()
    var path = [1,2,3,4,8,12,16,20,19,18,17,13,9,5,6,7,11,15,14,10]
    var random:Int!
    var random_range:UInt32=3
    
    var timer:NSTimer!
    var run_interval:NSTimeInterval = 0.25
    var pause_interval:NSTimeInterval = 0.25
    var pause_repeat = 5
    
    var index=0
    var repetition = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var y = CGFloat(INDENT)
        var btn:UIButton
        for(var i=0 ; i<ROW; i++){
            var rowArray = [UIButton]()
            var x = CGFloat(INDENT)
            for(var j=0 ; j<COL; j++){
                btn = UIButton(frame: CGRectMake(x, y, SIZE["height"]!, SIZE["width"]!))
                btn.backgroundColor = UIColor.blackColor()
                self.view.addSubview(btn)
                rowArray.append(btn)
                x += SPACE+SIZE["width"]!
            }
            arrBtn.append(rowArray)
            y += SPACE+SIZE["height"]!
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(run_interval, target: self, selector: "run", userInfo: nil, repeats: true)
    }
    func run(){
        if(path.count == 0){
            timer.invalidate()
        }
        var row=0,col=0
        setBlackColorPreviousElem()
        
        if (index<path.count){
            
            row = (path[index]-1)/COL
            col = (path[index]-1)%COL
            print("row2:\(row),col2:\(col)")
            arrBtn[row][col].backgroundColor = UIColor.blueColor()
            random = Int(arc4random_uniform(random_range))
            if(random == 1){
                repetition = 0
                timer.invalidate()
                timer = NSTimer.scheduledTimerWithTimeInterval(pause_interval, target: self, selector: "pause:", userInfo: ["row":row,"col":col], repeats: true)
            }else{
                
                index++
            }
        }
        else{
            index=0
        }
        print("")
    }
    func pause(t:NSTimer){
        setBlackColorPreviousElem()
        if(repetition < pause_repeat){
            let userInfo = t.userInfo as! Dictionary<String, AnyObject>
            let row:Int = (userInfo["row"] as! Int)
            let col:Int = (userInfo["col"] as! Int)
            if(repetition%2 == 0){
                arrBtn[row][col].backgroundColor = UIColor.blueColor()
            }
            else{
                arrBtn[row][col].backgroundColor = UIColor.blackColor()
            }
            repetition++
        }
        else{
            path.removeAtIndex(index)
            index = 0
            timer.invalidate()
            timer = NSTimer.scheduledTimerWithTimeInterval(run_interval, target: self, selector: "run", userInfo: nil, repeats: true)
        }
    }
    
    func setBlackColorPreviousElem(){
        var row=0,col=0
        if(path.count > 1){
            if(index == 0){
                row = (path[path.count-1]-1)/COL
                col = (path[path.count-1]-1)%COL
            }else{
                row = (path[index-1]-1)/COL
                col = (path[index-1]-1)%COL
            }
            arrBtn[row][col].backgroundColor = UIColor.blackColor()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

