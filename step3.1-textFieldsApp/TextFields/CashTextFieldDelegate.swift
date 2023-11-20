//
//  CashTextFieldDelegate.swift
//  TextFields
//
//  Created by Weili Yi on 11/20/23.
//  Copyright © 2023 Udacity. All rights reserved.
//

import Foundation
import UIKit

class CashTextFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        
        let regex = try!NSRegularExpression(pattern: "^[0-9]*$")
        let range = NSRange(location: 0, length: string.utf16.count)

        if regex.firstMatch(in: newText as String, options: [], range: range) == nil {
            return false
        }
        
        
        
        return true
    }
}
