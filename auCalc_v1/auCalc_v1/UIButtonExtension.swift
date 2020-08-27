//
//  UIButtonExtension.swift
//  auCalc_v1
//
//  Created by Rodrigo Canalizo Macías on 27/08/20.
//  Copyright © 2020 Rodrigo Canalizo Macías. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{

func shake() {
    let shake = CABasicAnimation(keyPath: "position")
    shake.duration = 0.05
    shake.repeatCount = 2
    shake.autoreverses = true
    
    let fromPoint = CGPoint(x: center.x-8, y: center.y)
    let fromValue = NSValue(cgPoint: fromPoint)
    
    let toPoint = CGPoint(x: center.x+8, y: center.y)
    let toValue = NSValue(cgPoint: toPoint)
    
    shake.fromValue = fromValue
    shake.toValue = toValue
    
    layer.add(shake, forKey: nil)
    }
}
