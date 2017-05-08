//
//  SoundSevenViewController.swift
//  Guess That Sound!
//
//  Created by jliu on 5/5/17.
//  Copyright © 2017 Jason Liu. All rights reserved.
//

import UIKit
import AVFoundation
class SoundSevenViewController: UIViewController {
    var audioBegin = AVAudioPlayer()
    var truck = URL(fileURLWithPath: Bundle.main.path(forResource: "Truck Horn", ofType: "mp3")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playSoundSevenButton(_ sender: Any) {
        
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: truck, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
            audioBegin.prepareToPlay()
            audioBegin.play()
        }
    
}

