//
//  SoundTwoViewController.swift
//  Guess That Sound!
//
//  Created by Sam Burrell on 5/4/17.
//  Copyright © 2017 Jason Liu. All rights reserved.
//

import UIKit
import AVFoundation

class SoundTwoViewController: UIViewController {
    var audioBegin = AVAudioPlayer()
    
    var storm = URL(fileURLWithPath: Bundle.main.path(forResource: "Storm", ofType: "mp3")!)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

  
    @IBAction func playSoundTwoOnButtonTapped(_ sender: UIButton) {
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: storm, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
        audioBegin.prepareToPlay()
        audioBegin.play()
        
    }

}
