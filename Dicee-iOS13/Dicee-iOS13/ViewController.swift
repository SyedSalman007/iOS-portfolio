//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftDice: UIImageView!
    @IBOutlet weak var rightDice: UIImageView!
    @IBOutlet weak var rollButton: UIButton!
    
    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        leftDice.image = UIImage(named: "DiceSix")
////        leftDice.alpha = 0.5
//        rightDice.image = UIImage(named: "DiceTwo")
////        rightDice.alpha = 0.5
//    }
//    in this code there is no need of viewDidLoad so I can also delete it.
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let allDices = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix",]
        
        leftDice.image = UIImage(named: allDices.randomElement() ?? "DiceOne")
        rightDice.image = UIImage(named: allDices.randomElement() ?? "DiceOne")
    }

}

