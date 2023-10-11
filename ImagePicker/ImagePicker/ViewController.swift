//
//  ViewController.swift
//  ImagePicker
//
//  Created by Weili Yi on 2023/10/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func experiment(sender: UIButton) {
        
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
        
    }


}

