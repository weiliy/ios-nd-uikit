//
//  ZipCodeFieldDelegate.swift
//  TextFields
//
//  Created by Weili Yi on 11/16/23.
//  Copyright © 2023 Udacity. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate: NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print("replace string: \(string)")
        print("current str", textField.text! as NSString)
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        let newStr = newText as String
        
        print("newstr \(newStr)")
        let numberStr = newStr.filter{ $0.isNumber }
        print("remove non number: -> ", numberStr, " <-")
        let first5Str = String(numberStr.prefix(4))
        print("only 5: -> ", first5Str)
        
        textField.text = first5Str.isEmpty ? "" : first5Str

        return true
    }
}
