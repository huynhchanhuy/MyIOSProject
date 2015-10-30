//
//  ShoppingController.swift
//  KhoaPham-Buoi10-ShoppingNavigation-Ex
//
//  Created by OSXVN on 10/29/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

// ko can dung NSUSerDefault

var LABEL_NAME_X:CGFloat = 120
var LABEL_NAME_Y:CGFloat = 10
var LABEL_NAME_WIDTH:CGFloat = 160
var LABEL_NAME_HEIGHT:CGFloat = 21

var LABEL_PRICE_X:CGFloat = 120
var LABEL_PRICE_Y:CGFloat = 41
var LABEL_PRICE_WIDTH:CGFloat = 160
var LABEL_PRICE_HEIGHT:CGFloat = 21


var VIEW_LEFT_INDENT:CGFloat = 15
var VIEW_TOP_INDENT:CGFloat = 15
var VIEW_SPACE:CGFloat = 20
var VIEW_WIDTH:CGFloat = 292
var VIEW_HEIGHT:CGFloat = 150

var BUTTON_TITTLE = "BUY"
var BUTTON_X:CGFloat = 120
var BUTTON_Y:CGFloat = 100
var BUTTON_WIDTH:CGFloat = 160
var BUTTON_HEIGHT:CGFloat = 40

var IMG_X:CGFloat = 10
var IMG_Y:CGFloat = 10
var IMG_WIDTH:CGFloat = 100
var IMG_HEIGHT:CGFloat = 130

class ShoppingController: UIViewController {
    
    var deliverVar = NSUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var scrollView: UIScrollView!
        scrollView = UIScrollView(frame: UIScreen.mainScreen().bounds)
        scrollView.backgroundColor = UIColor.whiteColor()
        self.view = scrollView
        scrollView.contentSize = CGSize(width:UIScreen.mainScreen().bounds.width, height: UIScreen.mainScreen().bounds.height*1.3)
        
        var view_y:CGFloat = VIEW_TOP_INDENT
        var view_x:CGFloat = VIEW_LEFT_INDENT
        
        for (i,item) in ProductList.enumerate(){
            
            var view_item:UIView = UIView(frame: CGRectMake(view_x, view_y, VIEW_WIDTH, VIEW_HEIGHT))
            view_item.layer.borderWidth = 2
            view_item.layer.borderColor = UIColor.brownColor().CGColor
            view_y = view_y + VIEW_HEIGHT + VIEW_SPACE
            
            var img:UIImageView = UIImageView(frame: CGRectMake(IMG_X, IMG_Y, IMG_WIDTH, IMG_HEIGHT))
            img.image = UIImage(named: item["id"]!)
            
            var lblName:UILabel = UILabel(frame: CGRectMake(LABEL_NAME_X, LABEL_NAME_Y, LABEL_NAME_WIDTH, LABEL_NAME_HEIGHT))
            lblName.text = "Name: "+item["name"]!
            
            var lblPrice:UILabel = UILabel(frame: CGRectMake(LABEL_PRICE_X, LABEL_PRICE_Y, LABEL_PRICE_WIDTH, LABEL_PRICE_HEIGHT))
            lblPrice.text = "Price: "+item["price"]!
            
            var btn:UIButton = UIButton(frame: CGRectMake(BUTTON_X, BUTTON_Y, BUTTON_WIDTH, BUTTON_HEIGHT))
            btn.setTitle(BUTTON_TITTLE, forState: .Normal)
            btn.backgroundColor = UIColor.orangeColor()
            btn.tag = i
            btn.addTarget(self, action: "clickBuy:", forControlEvents: .TouchUpInside)
            
            view_item.addSubview(img)
            view_item.addSubview(btn)
            view_item.addSubview(lblName)
            view_item.addSubview(lblPrice)
            //scrollView.contentOffset = CGPoint(x: 10, y: 20)
            view.addSubview(view_item)
        }
    }
    
    func clickBuy(object:UIButton){
        deliverVar.setValue(String(object.tag), forKey: "index")
        let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailView") as! DetailController
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    
    override func viewDidAppear(animated: Bool) {
        // 1
        //var nav = self.navigationController?.navigationBar
        // 2
        //nav?.barStyle = UIBarStyle.BlackTranslucent
        //nav?.tintColor = UIColor.yellowColor()
        // 3
        //let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        //imageView.contentMode = .ScaleAspectFit
        // 4
        //let image = UIImage(named: "Apple_Swift_Logo")
        //imageView.image = image
        // 5
        //navigationItem.titleView = imageView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
//    @IBAction func Click(sender: AnyObject) {
//        
//        let secondViewController = self.storyboard?.instantiateViewControllerWithIdentifier("DetailView") as! DetailController
//        
//        self.navigationController?.pushViewController(secondViewController, animated: true)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
