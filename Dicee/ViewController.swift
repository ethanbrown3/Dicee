//
//  ViewController.swift
//  Dicee
//
//  Created by Ethan Brown on 12/12/17.
//  Copyright © 2017 Ethan Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndexLeft: Int = 0
    var randomDiceIndexRight: Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageViewLeft: UIImageView!
    @IBOutlet weak var diceImageViewRight: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        randomDiceIndexLeft = Int(arc4random_uniform(6))  //arc4random_uniform() comes from UIKit
        randomDiceIndexRight = Int(arc4random_uniform(6))
        
        print("\(randomDiceIndexLeft+1)" + " " + "\(randomDiceIndexRight+1)")
        
        diceImageViewLeft.image = UIImage(named: diceArray[randomDiceIndexLeft])
        diceImageViewRight.image = UIImage(named: diceArray[randomDiceIndexRight])
    }
    
}

