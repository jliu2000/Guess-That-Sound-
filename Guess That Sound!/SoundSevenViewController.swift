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
    var kazoo = URL(fileURLWithPath: Bundle.main.path(forResource: "Kazoo", ofType: "mp3")!)
    var timer = Timer()
    var  timeLeft = 6
    var counter = 6

    @IBOutlet weak var correctAnswer: UIButton!
    @IBOutlet weak var incorrectAnswer: UIButton!
    @IBOutlet weak var incorrectAnswer2: UIButton!
    @IBOutlet weak var incorrectAnswer3: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var backToStart: UIButton!
    @IBOutlet weak var playSoundButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backToStart.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func playSoundSevenButton(_ sender: Any) {
        
        do
        {
            try audioBegin = AVAudioPlayer(contentsOf: kazoo, fileTypeHint: AVFileTypeMPEGLayer3)
        }
        catch
        {
            print("Error")
        }
            audioBegin.prepareToPlay()
            audioBegin.play()
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(SoundSixViewController.timerRunning), userInfo: nil, repeats: true)

        }
    
    func timerRunning (){
        timeLeft -= 1
        timerLabel.text = "Time Left: \(timeLeft)"
        
        if timeLeft == 0{
            timer.invalidate()
            timerLabel.text = "Time's up"
            correctAnswer.isHidden = true
            incorrectAnswer.isHidden = true
            incorrectAnswer2.isHidden = true
            incorrectAnswer3.isHidden = true
            backToStart.isHidden = false
            playSoundButton.isHidden = true
        }
    }

    
}

