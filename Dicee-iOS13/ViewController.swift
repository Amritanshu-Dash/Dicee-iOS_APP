//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDiceController: UIImageView!
    @IBOutlet weak var secondDiceController: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        firstDiceController.alpha = 0.7
        secondDiceController.alpha = 0.5
    }

    @IBAction func diceRollButton(_ sender: UIButton) {
        
        let picture_array = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
       
        firstDiceController.image = picture_array.randomElement() // picture_array[Int.random(in: 0...5)]
        secondDiceController.image = picture_array.randomElement()
    }
    
}

