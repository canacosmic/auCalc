//
//  ViewController.swift
//  au.Calc_v1
//
//  Created by Rodrigo Canalizo Macías on 29/08/20.
//  Copyright © 2020 Rodrigo Canalizo Macías. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //  Outlets:
    @IBOutlet weak var grTextField: UITextField!
    @IBOutlet weak var currentKTextField: UITextField!
    @IBOutlet weak var desiredKTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //  Button style:
        calculateButton.layer.cornerRadius = 10
        
        self.grTextField.delegate = self
        self.currentKTextField.delegate = self
        self.desiredKTextField.delegate = self
    }
    
    //  Button Action:
    @IBAction func calculateButtonAction(_ sender: UIButton) {
        if (grTextField.text != "" ), (currentKTextField.text != ""), (desiredKTextField.text != ""){
            performSegue(withIdentifier: "segue", sender: self)
        }else{
            sender.shake()
            let generator = UINotificationFeedbackGenerator()
            generator.notificationOccurred(.error)
        }
    }
    
    //  Sending Data to ResultViewController:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultController = segue.destination as! ResultViewController
        
        resultController.grNewString = grTextField.text!
        resultController.currentKNewString = currentKTextField.text!
        resultController.desiredKNewString = desiredKTextField.text!
    }
    
    // Hide Keyboard when user touches outside:
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}

