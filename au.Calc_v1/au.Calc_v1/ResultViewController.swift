//
//  ResultViewController.swift
//  au.Calc_v1
//
//  Created by Rodrigo Canalizo Macías on 29/08/20.
//  Copyright © 2020 Rodrigo Canalizo Macías. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    //  Outlets:
    @IBOutlet weak var grLabel: UILabel!
    @IBOutlet weak var metalLabel: UILabel!
    
    // Receiving User Input Data:
    var grNewString = String()
    var currentKNewString = String()
    var desiredKNewString = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Converting (String->Float):
        let grams : Float? = Float(grNewString)
        let currentK : Float? = Float(currentKNewString)
        let neededK : Float? = Float(desiredKNewString)
        
        // Equations:
        let raise = (grams! * (neededK! - currentK!)) / ((24 - neededK!))
        let lower = (grams! * (currentK! - neededK!)) / (neededK!)
        
        // Converting (Float->String):
        let raiseResult : String = String(format: "%.2f", raise)
        let lowerResult : String = String(format: "%.2f", lower)
        
        // Conditioning:
        if currentK! < neededK! {
            grLabel.text = raiseResult
            metalLabel.text = "gr. of 24K Gold."
        }
        else if currentK! > neededK! {
            grLabel.text = lowerResult
            metalLabel.text = "gr. of Alloy."
        }
        else if currentK! == neededK!{
            grLabel.text = ""
            metalLabel.text = "Nothing!"
        }
    }
}
