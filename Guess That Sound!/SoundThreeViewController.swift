//
//  SoundThreeViewController.swift
//  Guess That Sound!
//
//  Created by Sam Burrell on 5/4/17.
//  Copyright © 2017 Jason Liu. All rights reserved.
//

import UIKit
import AVFoundation
class SoundThreeViewController: UIViewController {
    
    var audioBegin = AVAudioPlayer()
    var turbo = URL(fileURLWithPath: Bundle.main.path(forResource: "Turbo", ofType: "mp3")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func playSoundThreeOnButtonTapped(_ sender: UIButton) {
        
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: turbo, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
            audioBegin.prepareToPlay()
            audioBegin.play()
        }
        }
