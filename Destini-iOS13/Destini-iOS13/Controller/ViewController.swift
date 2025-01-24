//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var storyMode = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateQuestion()
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        storyMode.updateDirection(sender.currentTitle!)
        updateQuestion()
    }
    
    func updateQuestion() {
        storyLabel.text = storyMode.nextChoice()
        choice1Button.setTitle(storyMode.nextChoice1(), for: .normal)
        choice2Button.setTitle(storyMode.nextChoice2(), for: .normal)
        
    }

}

