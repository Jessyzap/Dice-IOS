//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        alphaTransition(diceImageViewOne: diceImageViewOne, diceImageViewTwo: diceImageViewTwo)
        alphaRestore(diceImageViewOne: diceImageViewOne, diceImageViewTwo: diceImageViewTwo)
        
    }
    
    func alphaTransition(diceImageViewOne: UIImageView,diceImageViewTwo: UIImageView) {
        let transparent = 0.0
        diceImageViewOne.alpha = transparent
        diceImageViewTwo.alpha = transparent
    }
    
    func alphaRestore (diceImageViewOne: UIImageView,diceImageViewTwo: UIImageView) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [self] in
            
            let opaque = 1.0
            
            diceImageViewOne.image = self.diceArray[Int.random(in: 0...5)]
            diceImageViewTwo.image = self.diceArray[Int.random(in: 0...5)]
            
            diceImageViewOne.alpha = opaque
            diceImageViewTwo.alpha = opaque
        }
        
    }
    
}
