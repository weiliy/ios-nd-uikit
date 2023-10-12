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
    
    @IBAction func showAlert() {
        let controller = UIAlertController()
        
        controller.title = "Test Alert"
        controller.message = "This is a test"
        
        let okAction = UIAlertAction(title: "ok", style: .default) { action in
            self.dismiss(animated: true, completion: nil)
        }
        
        controller.addAction(okAction)
        
        present(controller, animated: true, completion: nil)
    }

    @IBAction func showActivity() {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(controller, animated: true, completion: nil)
    }

}

