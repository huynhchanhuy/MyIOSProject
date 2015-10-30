//
//  ViewController.swift
//  khoapham-Buoi2-Bai1
//
//  Created by OSXVN on 10/8/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var iName1:Int = 1
    var strName2:String = "Xin Chao"
    var strName3:NSString = "Xin Chao" //dung de chinh sua thay doi string
    var fName:Float = 3.242
    var cgfName:CGFloat = 3.432 //toa do, vi tri, kich thuoc
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let a:String = "35aa"
        var b:Int!
        b = Int(a)
        //let c:Int = Int(a)!
        
        //print(b+c)
        //print(String(c))
        
        //print(Int(fName))
        
        let example:String = "abc" + "abc" + String(fName)+"ten toi la:\(a) sinh nam: \(b)"
        
        var s1:String = "23.1"
        var s2:NSString = NSString(string:s1)
        
        print(Float(s1))
        print(Float(s1)!)
        print (s2.floatValue)
        
        var e:String?
        var r:String!
        
        if iName1 == 4 {
            print("Yes")
        }
        else if iName1 == 5{
            print("OK")
        }
        else {
            print("No")
        }
        
        for (var i=0;i<10;i++){
            print(i)
        }
        
        for i in 11...20{
            print(i)
        }
        
        for i in 21..<30{
            print(i)
        }
        
        while(iName1==9){
            print("TODO")
            break
        }
        
        //repeat{
        //
        //}while()
        
        //10/8=1
        //10%8=2
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

