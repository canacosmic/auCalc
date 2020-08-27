//
//  ViewController.swift
//  auCalc_v1
//
//  Created by Rodrigo Canalizo Macías on 25/08/20.
//  Copyright © 2020 Rodrigo Canalizo Macías. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // Outlets:
    @IBOutlet weak var grTextField: UITextField!
    @IBOutlet weak var currentTextField: UITextField!
    @IBOutlet weak var desiredTextField: UITextField!
    @IBOutlet weak var buttonCalc: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Button Style:
        buttonCalc.layer.cornerRadius = 10
        
        self.grTextField.delegate = self
        self.currentTextField.delegate = self
        self.desiredTextField.delegate = self
    }
    
    @IBAction func calculateButtonAction(_ sender: UIButton) {
        if (grTextField.text != "") ,(currentTextField.text != ""), (desiredTextField.text != "") {
            performSegue(withIdentifier: "segue", sender: self)
        } else {
            sender.shake()
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.error)
        }
    }
    
    //Sending user input data to ResultViewController:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultController = segue.destination as! ResultViewController
        
        resultController.grNewString = grTextField.text!
        resultController.currentString = currentTextField.text!
        resultController.desiredString = desiredTextField.text!
    }
    
}

