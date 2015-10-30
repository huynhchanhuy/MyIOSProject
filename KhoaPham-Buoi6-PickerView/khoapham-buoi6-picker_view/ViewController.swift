//
//  ViewController.swift
//  khoapham-buoi6-picker_view
//
//  Created by OSXVN on 10/22/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var myPicker: UIPickerView!
    //    var arr:[[String]] = [["Ho Chi Minh", "Ha Noi", "Da Nang", "Hai Phong", "Can Tho"],["08","04","026","012","030"],["80","20","100","20"]]
    var arrHinh:[String] = ["arrow637.png","check box.png","circle109.png"]
    override func viewDidLoad() {
        //        var arrImg:[NSURL] = NSBundle.mainBundle().URLsForResourcesWithExtension("png", subdirectory: "png")!
        //        for i in arrImg{
        //            arrHinh.append(i.lastPathComponent!)
        //        }
        super.viewDidLoad()
        myPicker.delegate = self
        myPicker.dataSource = self
    }
    // column
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
    }
    // row
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return arrHinh[component].count
        return arrHinh.count
    }
    // content
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        //return arrHinh[component][row]
        return arrHinh[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 100
    }
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        var img:UIImageView = UIImageView(frame: CGRectMake(0,0,50,100))
        img.image = UIImage(named:arrHinh[row])
        
        return img
        
    }
    
    //    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    //        print(arr[component][row])
    //    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.ß
    }


}

