//
//  ViewController.swift
//  khoapham-buoi5-demomp3
//
//  Created by OSXVN on 10/15/15.
//  Copyright © 2015 HuyHuynh. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {
    
    var avplayer:AVPlayer = AVPlayer()
    var avaudioplayer:AVAudioPlayer = AVAudioPlayer()
    var moviePlayer:MPMoviePlayerController?
    func playMusicOffline(){
        let path = NSBundle.mainBundle().pathForResource("sample", ofType:"mp3")
        let url:NSURL = NSURL(fileURLWithPath: path!)
        do {
            avaudioplayer = try AVAudioPlayer(contentsOfURL: url)
            avaudioplayer.play()
        }catch{
            print("Loi")
        }
    }
    
    func playMusicOnline(){
        let url:NSURL = NSURL(fileURLWithPath: "http://m.mp3.zing.vn/xml/song-load/MjAxNSUyRjA5JTJGMzAlMkZjJTJGMCUyRmMwN2JiYjJiNjk4MjU2NjgyNTA2ZGIxOTg5YjhlYjc0Lm1wMyU3QzEz")
        avplayer = AVPlayer(URL: url)
        avplayer.play()
    }
    
    func playVideoOffline(){
        let path = NSBundle.mainBundle().pathForResource("sample", ofType: "mp4")
        let url = NSURL.fileURLWithPath(path!)
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        moviePlayer?.view.autoresizingMask = [UIViewAutoresizing.FlexibleWidth, UIViewAutoresizing.FlexibleHeight]
        
        self.moviePlayer!.view.frame = self.view.bounds
        moviePlayer!.prepareToPlay()
        moviePlayer!.scalingMode = .AspectFit //MPMovieScalingMode.AspectFill
        self.view.addSubview((moviePlayer?.view)!)
    }
    
    func playVideoOnline(){
        //let path = NSBundle.mainBundle().pathForResource("sample", ofType: "mp4")
        let url = NSURL(string: "http://mp3.zing.vn/embed/video/ZW7WBZBI")
        moviePlayer = MPMoviePlayerController(contentURL: url)
        
        moviePlayer = MPMoviePlayerController(contentURL: url)
        moviePlayer!.view.frame = CGRect(x: 20, y: 100, width: 200, height: 150)
        
        self.view.addSubview(moviePlayer!.view)
        moviePlayer!.fullscreen = true
        
        moviePlayer!.controlStyle = MPMovieControlStyle.Embedded
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //http://mp3.zing.vn/embed/video/ZW7WBZBI
        playVideoOnline()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        }
        


}

