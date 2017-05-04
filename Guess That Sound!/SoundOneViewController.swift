//
//  SoundOneViewController.swift
//  Guess That Sound!
//
//  Created by Sam Burrell on 5/3/17.
//  Copyright © 2017 Jason Liu. All rights reserved.
//

import UIKit
import AVFoundation

class SoundOneViewController: UIViewController {
    
    var audioBegin = AVAudioPlayer()
    var bankrupt = URL(fileURLWithPath: Bundle.main.path(forResource: "Bankrupt", ofType: "mp3")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func playSoundOne(_ sender: UIButton) {
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: bankrupt, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
        audioBegin.prepareToPlay()
        audioBegin.play()
        
    }
    }


