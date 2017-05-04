//
//  SoundFourViewController.swift
//  Guess That Sound!
//
//  Created by Sam Burrell on 5/4/17.
//  Copyright © 2017 Jason Liu. All rights reserved.
//

import UIKit
import AVFoundation
class SoundFourViewController: UIViewController {
    
    var audioBegin = AVAudioPlayer()
    var nailGun = URL(fileURLWithPath: Bundle.main.path(forResource: "Nail Gun", ofType: "mp3")!)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func playSoundFourOnButtonTapped(_ sender: UIButton) {
    
    do
    {
        try audioBegin = AVAudioPlayer(contentsOf: nailGun, fileTypeHint: AVFileTypeMPEGLayer3)
    }
    catch
    {
        print("Error")
    }
        audioBegin.prepareToPlay()
        audioBegin.play()
    }
}
