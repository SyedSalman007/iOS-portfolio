//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer?
    
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonG: UIButton!
    @IBOutlet weak var buttonF: UIButton!
    @IBOutlet weak var buttonE: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        if sender == buttonA {
            playSound(play: "A")
        } else if sender == buttonB {
            playSound(play: "B")
        } else if sender == buttonC {
            playSound(play: "C")
        } else if sender == buttonD {
            playSound(play: "D")
        } else if sender == buttonE {
            playSound(play: "E")
        } else if sender == buttonF {
            playSound(play: "F")
        } else {
            playSound(play: "G")
        }
    }

    func playSound(play sound: String) {
        guard let path = Bundle.main.path(forResource: sound, ofType:"wav") else {
            return }
        
        let url = URL(fileURLWithPath: path)

        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }

}

