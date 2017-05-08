//
//  SoundFiveViewController.swift
//  Guess That Sound!
//
//  Created by jliu on 5/5/17.
//  Copyright © 2017 Jason Liu. All rights reserved.
//

import UIKit
import AVFoundation

class SoundFiveViewController: UIViewController {

    
    var audioBegin = AVAudioPlayer()
    var chance = URL(fileURLWithPath: Bundle.main.path(forResource: "Chance Igh", ofType: "mp3")!)

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func playSoundFiveButton(_ sender: UIButton) {
        
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: chance, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
            audioBegin.prepareToPlay()
            audioBegin.play()
        }
        }
