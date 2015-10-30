//
//  ViewController.swift
//  khoapham-Buoi2-Excercise
//
//  Created by OSXVN on 10/8/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtToan: UITextField!
    @IBOutlet weak var txtHoa: UITextField!
    @IBOutlet weak var txtLy: UITextField!
    @IBOutlet weak var txtKetQua: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var btnTinh: UIButton!

    @IBAction func KetQua(sender: AnyObject) {
        var strToan = Int(txtToan.text!)! //Tu dong nhan keu theo ve ben tay phai
        var strLy = Int(txtLy.text!)!
        var strHoa = Int(txtHoa.text!)!
        var strKQ = (strToan+strLy+strHoa)/3
        
        if strKQ >= 5{
            txtKetQua.text="Pass"
        }
        else
        {
            txtKetQua.text="Fail"
        }
        
    }
}

