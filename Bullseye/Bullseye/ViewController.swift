//
//  ViewController.swift
//  Bullseye
//
//  Created by Qian Ni on 9/29/22.
//

import UIKit
//at the very top after UIKit
import Foundation

class ViewController: UIViewController {
    
    var randomNumber = 0

    func vieswDidLoad() {
            super.viewDidLoad()
            randomNumber = Int(arc4random_uniform(101))
                    numLabel.text = String(randomNumber)
    }

    //override func viewDidLoad() {
        //super.viewDidLoad()
        // Do any additional setup after loading the view.
    //}
    
    
    @IBOutlet weak var numLabel: UILabel!
    
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    
    @IBAction func playAgain(_ sender: UIButton) {
    }
    
    @IBAction func checkValue(_ sender: Any) {
        
        
        if exactSwitch.isOn == false {
            
            if randomNumber - 3 <= Int(numSlider.value) && randomNumber + 3 >= Int(numSlider.value) {
                resultLabel.text = "You were right on point! Bullseye!"
            } else {
                resultLabel.text = "Whoops! You missed! Try again later"
            }
            
        } else {
            
            if (randomNumber == Int(numSlider.value)) {
                resultLabel.text = "Bullseye!"
            } else {
                resultLabel.text = "You missed!"
            }
        }
        
        resultLabel.isHidden = false //we'll come back to this
        playAgainButton.isHidden = false
                
    }
    
    
    @IBAction func sliderValueChanged(_ sender: Any) {
        numLabel.text = "\(Int(numSlider.value))"
    }
    
    
    @IBOutlet weak var numSlider: UISlider!
    
    
    @IBOutlet weak var exactSwitch: UISwitch!

    
    @IBOutlet weak var highScoreLabel: UILabel!
    
    
    @IBOutlet weak var currLevelLabel: UILabel!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func changeSlider(_ sender: Any) {
    }
}

