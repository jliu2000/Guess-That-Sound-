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
    var storm = URL(fileURLWithPath: Bundle.main.path(forResource: "RagingStorm", ofType: "mp3")!)
    var bankrupt = URL(fileURLWithPath: Bundle.main.path(forResource: "Bankrupt", ofType: "mp3")!)
    var timer = Timer()
    var  timeLeft = 6
    var counter = 6
    
    @IBOutlet weak var correctAnswer: UIButton!
    @IBOutlet weak var incorrectAnswer1: UIButton!
    @IBOutlet weak var incorrectAnswer2: UIButton!
    @IBOutlet weak var incorrectAnswer3: UIButton!
    @IBOutlet weak var backToStart: UIButton!
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backToStart.isHidden = true
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
        timeLeft = 6
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(SoundOneViewController.timerRunning), userInfo: nil, repeats: true)

    }
    func timerRunning (){
        timeLeft -= 1
        timerLabel.text = "Time Left: \(timeLeft)"
        
        if timeLeft == 0{
            timer.invalidate()
            timerLabel.text = "Time's up"
            correctAnswer.isHidden = true
            incorrectAnswer1.isHidden = true
            incorrectAnswer2.isHidden = true
            incorrectAnswer3.isHidden = true
            backToStart.isHidden = false
        }
    }
    
}
