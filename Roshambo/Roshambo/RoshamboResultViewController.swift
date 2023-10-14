//
//  RoshamboResultViewController.swift
//  Roshambo
//
//  Created by Weili Yi on 2023/10/12.
//

import UIKit

class RoshamboResultViewController: UIViewController {
    
    
    var playerChoseValue: ChoseValue?
    var computerChoseValue: ChoseValue?

    enum ChoseValue: Int {
        case paper = 0, rocker, scissors
    }
    
    enum ResultType: String {
        case itsATie = "itsATie"
        case PaperCoversRock = "PaperCoversRock"
        case RockCrushesScissors = "RockCrushesScissors"
        case ScissorsCutPaper = "ScissorsCutPaper"
    }

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        let randomValue = arc4random() % 3
        computerChoseValue = ChoseValue(rawValue: Int(randomValue))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let choseValue = self.playerChoseValue, let computerChoseValue = self.computerChoseValue {
            switch [choseValue, computerChoseValue] {
            case [.paper, .rocker]:
                updateResult(.PaperCoversRock, isWin: true)
            case [.rocker, .paper]:
                updateResult(.PaperCoversRock)
            case [.rocker, .scissors]:
                updateResult(.RockCrushesScissors, isWin: true)
            case [.scissors, .rocker]:
                updateResult(.RockCrushesScissors)
            case [.scissors, .paper]:
                updateResult(.ScissorsCutPaper, isWin: true)
            case [.paper, .scissors]:
                updateResult(.ScissorsCutPaper)
            default:
                updateResult(.itsATie)
            }
        } else {
            image.image = nil
        }
        
        image.alpha = 0
        label.alpha = 0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 0.3) {
            self.image.alpha = 1
            self.label.alpha = 1
        }
    }
    
    func updateResult(_ resultType: ResultType, isWin: Bool = false) {
        switch resultType {
        case .itsATie:
            image.image = UIImage(named: "itsATie")
            label.text = "It's a tie!"
        case .PaperCoversRock:
            image.image = UIImage(named: "PaperCoversRock")
            label.text = "Paper covers Rock. You \(isWin ? "Win" : "Lose")!"
        case .RockCrushesScissors:
            image.image = UIImage(named: "RockCrushesScissors")
            label.text = "Rock crushes Scissors. You \(isWin ? "Win" : "Lose")!"
        case .ScissorsCutPaper:
            image.image = UIImage(named: "ScissorsCutPaper")
            label.text = "Scissors covers Paper. You \(isWin ? "Win" : "Lose")!"
        }
    }
    
    @IBAction func dismiss(_ sender: Any?) {
        self.dismiss(animated: true, completion: nil)
    }
}
