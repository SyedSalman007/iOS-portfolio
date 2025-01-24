//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let eggTimes = ["Soft": 10, "Medium": 420, "Hard": 720]
    var totalTime = 0
    var timePassed = 0
    var timer: Timer?
    var selectedEggType: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        timer?.invalidate()
        
        let hardness = sender.currentTitle!
        
        if let time = eggTimes[hardness] {
            totalTime = time
            selectedEggType = hardness
            
            titleLabel.text = "Boiling..."
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
        } else {
            print("Invalid selection")
        }
    }
    
    @objc func updateTimer() {
        if timePassed < totalTime {
            let precentageProgress = Float(timePassed) / Float(totalTime)
            print(precentageProgress)
            progressBar.progress = precentageProgress
            timePassed += 1
        } else {
            timer?.invalidate()
            progressBar.progress = 1.0
            titleLabel.text = "DONE!"
        }
    }
}


