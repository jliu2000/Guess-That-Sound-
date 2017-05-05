//
//  SoundSixViewController.swift
//  Guess That Sound!
//
//  Created by jliu on 5/5/17.
//  Copyright © 2017 Jason Liu. All rights reserved.
//

import UIKit
import AVFoundation

class SoundSixViewController: UIViewController {
    
    var audioBegin = AVAudioPlayer()
    var twang = URL(fileURLWithPath: Bundle.main.path(forResource: "Twang", ofType: "mp3")!)
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func playSoundSixButton(_ sender: UIButton) {
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: twang, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
        audioBegin.prepareToPlay()
        audioBegin.play()
    }
}



