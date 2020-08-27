//
//  ResultViewController.swift
//  auCalc_v1
//
//  Created by Rodrigo Canalizo Macías on 27/08/20.
//  Copyright © 2020 Rodrigo Canalizo Macías. All rights reserved.
//

import Foundation
import UIKit

class ResultViewController: UIViewController, UITextFieldDelegate{
    
    //Outlets:
    @IBOutlet weak var grLabel: UILabel!
    @IBOutlet weak var metalLabel: UILabel!
    
    //  Receiving data user input data from ViewControlller:
    var grNewString = String()
    var currentString = String()
    var desiredString = String()

override func viewDidLoad() {
        super.viewDidLoad()
        
        // Converting (String->Float):
        let grams : Float? = Float(grNewString)
        let currentK : Float? = Float(currentString)
        let neededK : Float? = Float(desiredString)
        
        // Equations:
        let raise = (grams! * (neededK! - currentK!)) / ((24 - neededK!))
        let lower = (grams! * (currentK! - neededK!)) / (neededK!)
        
        // Converting (Float->String):
        let raiseResult : String = String(format: "%.2f", raise)
        let lowerResult : String = String(format: "%.2f", lower)
        
        // Conditioning:
        if currentK! < neededK! {
            grLabel.text = raiseResult
            metalLabel.text = "gr. Of 24K Gold."
        }
        else if currentK! > neededK! {
            grLabel.text = lowerResult
            metalLabel.text = "gr. Of Alloy."
        }
        else if currentK! == neededK!{
            metalLabel.text = "Nothing!"
        }
    }
}
