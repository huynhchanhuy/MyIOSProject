//
//  ViewController.swift
//  D2-HuynhChanHuy
//
//  Created by OSXVN on 10/20/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

/*
    - Bai lam tuong doi hoan thien
    - Khi bingo roi ban nen cho timer ngung
    - Code ban chua ngon ngang lam, nhung minh cho ban 1d lun
    - Can toi uu code hon chut nua nhe ban.
    ==> Bai lam tot

    - Game bingo 					(5.5d)
    - Kiem tra ket qua nguoi chien thang (1d)


    - Toi uu (vd: tinh toan, tao bien du thua...) (1d)
    - Gon dep Code 				(1d)
    - Trc thoi gian 					(1d)
    ==> 9.5d/10d va ban se la nguoi len bang sua bai nay 

*/

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnBingo: UIButton!
    @IBOutlet weak var lblScore: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var clickBtn6: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    @IBOutlet weak var lblResult: UILabel!
    
    var arrbtn: [UIButton] = []
    var arrValues: [Int] = []
    var timer:NSTimer!
    var randomHistory: [Int] = []
    var arrCheckValue: [Int] = []
    var RANGE:UInt32 = 100
    var TIME:NSTimeInterval = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrbtn = [btn1,btn2,btn3,btn4,btn5,btn6,btn7,btn8,btn9]
        var number:Int = 0
        Count()
        for(var i=0; i<9; i++){
            repeat{
                number = Int(arc4random_uniform(RANGE))
            }while(arrValues.contains(number))
            
            arrValues.append(number)
            arrbtn[i].setTitle(String(number), forState: UIControlState.Normal)
        }
        
        timer = NSTimer.scheduledTimerWithTimeInterval(TIME,target:self,selector: Selector("Count"), userInfo: nil, repeats: true)
        
    }
    @IBAction func clickBtn1(sender: AnyObject) {
        
        if(arrValues[0] == randomHistory[randomHistory.count-1]){
            print("abc")
            arrCheckValue.append(1)
            arrbtn[0].backgroundColor = UIColor.redColor()
            arrbtn[0].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn2(sender: AnyObject) {
        if(arrValues[1] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(2)
            arrbtn[1].backgroundColor = UIColor.redColor()
            arrbtn[1].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn3(sender: AnyObject) {
        if(arrValues[2] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(3)
            arrbtn[2].backgroundColor = UIColor.redColor()
            arrbtn[2].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn4(sender: AnyObject) {
        if(arrValues[3] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(4)
            arrbtn[3].backgroundColor = UIColor.redColor()
            arrbtn[3].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn5(sender: AnyObject) {
        if(arrValues[4] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(5)
            arrbtn[4].backgroundColor = UIColor.redColor()
            arrbtn[4].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn6(sender: AnyObject) {
        if(arrValues[5] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(6)
            arrbtn[5].backgroundColor = UIColor.redColor()
            arrbtn[5].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn7(sender: AnyObject) {
        if(arrValues[6] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(7)
            arrbtn[6].backgroundColor = UIColor.redColor()
            arrbtn[6].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn8(sender: AnyObject) {
        if(arrValues[7] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(8)
            arrbtn[7].backgroundColor = UIColor.redColor()
            arrbtn[7].enabled = false
            //checkBingo()
        }
    }
    @IBAction func clickBtn9(sender: AnyObject) {
        if(arrValues[8] == randomHistory[randomHistory.count-1]){
            arrCheckValue.append(9)
            arrbtn[8].backgroundColor = UIColor.redColor()
            arrbtn[8].enabled = false
            //checkBingo()
        }
    }
    
    func Count(){
        var number:Int = 0
        repeat{
            number = Int(arc4random_uniform(RANGE))
        }while(randomHistory.contains(number))
        
        randomHistory.append(number)
        lblScore.text = String(number)
    }
    
    @IBAction func Bingo(sender: AnyObject) {
        if(
            (arrCheckValue.contains(1) && arrCheckValue.contains(2) && arrCheckValue.contains(3)) ||
                (arrCheckValue.contains(1) && arrCheckValue.contains(4) && arrCheckValue.contains(7)) ||
                (arrCheckValue.contains(1) && arrCheckValue.contains(5) && arrCheckValue.contains(9)) ||
                (arrCheckValue.contains(2) && arrCheckValue.contains(5) && arrCheckValue.contains(8)) ||
                (arrCheckValue.contains(3) && arrCheckValue.contains(6) && arrCheckValue.contains(9)) ||
                (arrCheckValue.contains(4) && arrCheckValue.contains(5) && arrCheckValue.contains(6)) ||
                (arrCheckValue.contains(7) && arrCheckValue.contains(8) && arrCheckValue.contains(9)) ||
                (arrCheckValue.contains(3) && arrCheckValue.contains(5) && arrCheckValue.contains(7))
            ){
                lblResult.text="100"
                timer.invalidate()
        }
    }
    
    
}

