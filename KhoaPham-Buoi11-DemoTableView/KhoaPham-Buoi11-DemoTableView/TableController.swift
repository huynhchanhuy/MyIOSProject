//
//  TableController.swift
//  KhoaPham-Buoi11-DemoTableView
//
//  Created by OSXVN on 10/29/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit

var arrND : [String] = ["a","b","c","d","e","f"]
class TableController: UITableViewController {

    var bienDB:NSUserDefaults = NSUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var row:Int = (tableView.indexPathForSelectedRow?.row)!
        bienDB.setValue(row, forKey: "row")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    //Table có bao nhiêu group/section
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 2
    }
    
    //Table mình có bao nhiêu dòng trong 1 group/section
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrND.count
    }

    // Cấu hình cái gì hiển thị trong cái dòng của table view
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        // Thay bằng tên của identifier mình đặt cho thằng Table View Cell >> Identifier
        let cell = tableView.dequeueReusableCellWithIdentifier("myCell", forIndexPath: indexPath) as! TableCell
        
        cell.cell_img.image = UIImage(named: "0004.jpg")
        cell.cell_lbl.text = arrND[indexPath.row]
        
        // Configure the cell...
        //cell.textLabel?.text = arrND[indexPath.row]
//        var img = UIImageView(frame: CGRectMake(0, 0, 100, 100))
//        img.image = UIImage(named: "0004.jpg")
//        cell.addSubview(img)
//        
//        var lblTitle:UILabel = UILabel(frame: CGRectMake(120, 0, 200, 100))
//        lblTitle.text = arrND[indexPath.row]
//        cell.addSubview(lblTitle)
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 120
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
