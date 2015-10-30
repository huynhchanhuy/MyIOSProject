//
//  ViewController.swift
//  khoapham-buoi4-excercise
//
//  Created by OSXVN on 10/13/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sliProAlpha: UISlider!
    @IBOutlet weak var sliProRed: UISlider!
    @IBOutlet weak var sliProGreen: UISlider!
    @IBOutlet weak var sliProBlue: UISlider!
    
    var redColor:CGFloat = 0
    var greenColor:CGFloat = 0
    var blueColor:CGFloat = 0
    var alpha:CGFloat = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        redColor = CGFloat(sliProRed.value)
        greenColor = CGFloat(sliProGreen.value)
        blueColor = CGFloat(sliProBlue.value)
        alpha = CGFloat(sliProAlpha.value)
        
    }
    
    @IBAction func sliAlpha(sender: AnyObject) {
        alpha = CGFloat(sliProAlpha.value)
        self.view.backgroundColor = UIColor(red:redColor,green:greenColor,blue:blueColor,alpha:alpha)
    }
    
    @IBAction func sliBlue(sender: AnyObject) {
        blueColor = CGFloat(sliProBlue.value)
        self.view.backgroundColor = UIColor(red:redColor,green:greenColor,blue:blueColor,alpha:alpha)
    }
    
    @IBAction func sliGreen(sender: AnyObject) {
        greenColor = CGFloat(sliProGreen.value)
        self.view.backgroundColor = UIColor(red:redColor,green:greenColor,blue:blueColor,alpha:alpha)
    }

    @IBAction func sliRed(sender: AnyObject) {
        redColor = CGFloat(sliProRed.value)
        self.view.backgroundColor = UIColor(red:redColor,green:greenColor,blue:blueColor,alpha:alpha)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

