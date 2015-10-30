//
//  ViewController.swift
//  khoapham-buoi3-imageview
//
//  Created by OSXVN on 10/10/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //xcoord được ép kiểu về CGFloat theo vế bên phải
        //CGFloat là kiểu mở rộng của float dùng để lưu trữ kich thước, vị trí, toạ độ của float        
        
        var xviewcoord = self.view.frame.size.width/2
        var yviewcoord = self.view.frame.size.height/2
        
        //self.view.frame.origin
        //var img:UIImageView = UIImageView(frame: CGRectMake(0, 0, 50, 50))
        
        //Canh giữa màn hình
        var img:UIImageView = UIImageView(frame: CGRectMake(xviewcoord - 100, yviewcoord - 100, 200, 200))
        
        img.image = UIImage(named: "images.jpg")
        img.contentMode = UIViewContentMode.ScaleAspectFit
        img.backgroundColor = UIColor.redColor()
        self.view.addSubview(img)
        
        let xframecoord = img.frame.origin.x // lấy về vị trí x,y của tấm hình
        let yframecoord = img.frame.origin.y
        
        //self.view.frame.size.width chiều ngang màn hình điện thoại
        //self.view.frame.size.width chiều dọc màn hình điện thoại
        //img.frame.size.width chiều ngang đối tượng
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

