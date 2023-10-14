//
//  ViewController.swift
//  Roshambo
//
//  Created by Weili Yi on 2023/10/12.
//

import UIKit

class RoshamboPlayViewController: UIViewController {

    var userChose: RoshamboResultViewController.ChoseValue?
    
    @IBAction func choseRock(_ sender: Any) {
        var controller: RoshamboResultViewController
        controller = storyboard?.instantiateViewController(withIdentifier: "RoshamboResultViewController") as! RoshamboResultViewController
        
        controller.playerChoseValue = .rocker
        
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func chosePaper(_ sender: Any) {
        performSegue(withIdentifier: "roshamboResult", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "roshamboResult" {
            let controller = segue.destination as! RoshamboResultViewController
            let button = sender as! UIButton
            
            let choseValue = RoshamboResultViewController.ChoseValue(rawValue: button.tag)
            controller.playerChoseValue = choseValue
        }
    }
}

