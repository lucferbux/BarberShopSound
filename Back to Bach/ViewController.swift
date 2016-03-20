//
//  ViewController.swift
//  Back to Bach
//
//  Created by lucas fernández on 21/07/15.
//  Copyright (c) 2015 lucas fernández. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    

    
    @IBOutlet var playButton: UIBarButtonItem!
    
    @IBOutlet var toolbarControl: UIToolbar!
    var isPlay = false
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
   
    @IBAction func play(sender: UIBarButtonItem) {
        
        if player.playing{
        player.pause()
        }else{
        player.play()
        }
    }
        
        
        
        
    
    
    @IBAction func pause(sender: AnyObject) {
        
        player.pause()
        
    }

    @IBAction func stop(sender: AnyObject) {
        
        player.stop()
        player.currentTime = 0
        
    }
    
    @IBAction func sliderAction(sender: AnyObject) {
        
        player.volume = slider.value
        
    }
    
    @IBOutlet var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let audioPath = NSBundle.mainBundle().pathForResource("bruel_hairdresser", ofType: "wav")!
        
        
        do{
            try
       player = AVAudioPlayer(contentsOfURL: NSURL(string: audioPath)!)  //mirar el proyecto anterior por si no te eenteras

       slider.setValue(player.volume, animated: true)
       } catch let error as NSError {
    
       error.description
      
    }
 
    
    
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

