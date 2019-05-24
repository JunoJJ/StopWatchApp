//
//  ViewController.swift
//  StopWatchApp
//
//  Created by Juno James on 5/15/19.
//  Copyright © 2019 JunoJames. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var currentTime = 0
    var stopWatchTimer = Timer()
    
    
    //IBOutlets
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var pauseButton: UIButton!
    //IBActions
    
    @IBAction func playButtonAction(_ sender: Any) {
        
        playButton.isHidden = true
        pauseButton.isHidden = false
        resetButton.isHidden = false

        stopWatchTimer = Timer.scheduledTimer(timeInterval:0.1, target: self, selector: (#selector(ViewController.timeUpdate)), userInfo: nil, repeats: true)
        
    }
    @IBAction func pauseButtonAction(_ sender: Any) {
        
        
        pauseButton.isHidden = true
        playButton.isHidden = false
        resetButton.isHidden = false
        
        stopWatchTimer.invalidate()


        
    }
    
    @IBAction func resetButtonAction(_ sender: Any) {
       
        pauseButton.isHidden = true
        playButton.isHidden = false
        resetButton.isHidden = false
        
        //Code for timer

        currentTime = 0
        minutesLabel.text = "0"
        secondsLabel.text = "0"
        
        stopWatchTimer.invalidate()
        

        
    }
    
    @objc func timeUpdate() {
        currentTime += 1
        minutesLabel.text = "\(currentTime / 60)"
        secondsLabel.text = "\(currentTime % 60)"
        
        if currentTime == 3600 {
            currentTime = 0
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        playButton.isHidden = false
        resetButton.isHidden = false
        pauseButton.isHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

