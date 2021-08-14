//
//  ViewController.swift
//  UITextField
//
//  Created by Nazar Dranhovskyi on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelControl: UILabel!
    @IBOutlet weak var textFieldControl: UITextField!
    @IBOutlet weak var buttonControl: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        
        guard textFieldControl.text?.isEmpty == false else {
            return
        }
        
        if let _ = Double(textFieldControl.text!) {
            
            let alert = UIAlertController(title: "Wrong format", message: "Please check you text", preferredStyle: .alert)
            let alertAction = UIAlertAction(title: "Ok", style: .cancel, handler: clearText)
            
            alert.addAction(alertAction)
            
            present(alert, animated: true, completion: nil)
            
            
        } else {
            labelControl.text = textFieldControl.text
        }
    }
    
    func clearText(_ sender: UIAlertAction) {
        labelControl.text = nil
    }
    
}

