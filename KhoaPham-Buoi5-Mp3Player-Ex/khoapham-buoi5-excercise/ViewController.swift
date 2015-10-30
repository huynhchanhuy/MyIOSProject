//
//  ViewController.swift
//  khoapham-buoi5-excercise
//
//  Created by OSXVN on 10/17/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    var items: [NSURL]!
    var avplayer:AVAudioPlayer = AVAudioPlayer()
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mp3slider: UISlider!
    override func viewDidLoad() {

        super.viewDidLoad()
        // We need just to get the documents folder url
        let imageArray = NSBundle.mainBundle().URLsForResourcesWithExtension("mp3", subdirectory: "")
        items = imageArray
        print(imageArray?.count)
        for i in imageArray!{
            print(i.path)
        }
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    @IBAction func sliderchanged(sender: AnyObject) {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.tableView!.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        cell.textLabel?.text = String(self.items[indexPath.row].lastPathComponent!)
        
        return cell
    }
    
    func tableView(tableView: UITableView!, didSelectRowAtIndexPath indexPath: NSIndexPath!) {
        print("You selected cell #\(indexPath.row)!")
        //let path = NSBundle.mainBundle().pathForResource("sample", ofType:"mp3")
        //let url:NSURL = NSURL(fileURLWithPath: imageArray.in!)
        do {
            avplayer = try AVAudioPlayer(contentsOfURL: items[indexPath.row])
            avplayer.play()
        }catch{
            print("Error")
        }

    }



}

