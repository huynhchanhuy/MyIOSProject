//
//  ViewController.swift
//  khoapham-Buoi2-excercise2
//
//  Created by OSXVN on 10/8/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblNum1: UILabel!
    @IBOutlet weak var lblNum2: UILabel!
    @IBOutlet weak var lblNum3: UILabel!
    @IBOutlet weak var lblMsg: UILabel!
    @IBOutlet weak var lblKQ: UILabel!
    
    var num1:Int = 0
    var num2:Int = 0
    var num3:Int = 0
    var numkq:Int = 0
    var count:Int = 0
    
    func checkResult(){
        num1 = Int(arc4random_uniform(100))
        num2 = Int(arc4random_uniform(100))
        num3 = num1+num2
        lblNum1.text = String(num1)
        lblNum2.text = String(num2)
        numkq = Int(arc4random_uniform(2))
        if numkq == 1{
            lblNum3.text = String(num3)
        }
        else
        {
            lblNum3.text = String(arc4random_uniform(200))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        checkResult()
    }

    @IBAction func btnTiepTuc_TouchUpInside(sender: AnyObject) {
        lblMsg.text = ""
    }

    
    @IBAction func btnDung_TouchUpInside(sender: AnyObject) {
        if numkq == 1{
            lblMsg.text = "CHÍNH XÁC"
            count++
            lblKQ.text = "ĐIỂM SỐ " + String(count)
            
        }
        else{
            lblMsg.text = "SAI RỒI"
        }
        
        checkResult()
        
    }
    @IBAction func btnSai_TouchUpInside(sender: AnyObject) {
        if numkq == 0{
            lblMsg.text = "CHÍNH XÁC"
            count++
            lblKQ.text = "ĐIỂM SỐ " + String(count)
        }
        else{
           self.lblMsg.text = "SAI RỒI"
        }
        
        checkResult()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }

    
}

