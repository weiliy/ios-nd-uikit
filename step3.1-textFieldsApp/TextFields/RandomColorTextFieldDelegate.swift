//
//  RandomColorTextFieldDelegate.swift
//  TextFields
//
//  Created by Weili Yi on 11/15/23.
//  Copyright © 2023 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorTextFieldDelegate: NSObject, UITextFieldDelegate {

    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0.0...1.0)
        let green = CGFloat.random(in: 0.0...1.0)
        let blue = CGFloat.random(in: 0.0...1.0)
        let alpha = CGFloat.random(in: 0.0...1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
}
