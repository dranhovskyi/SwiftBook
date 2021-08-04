//
//  ViewController.swift
//  OutletAndAction
//
//  Created by Nazar Dranhovskyi on 04.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet var labelCollection: [UILabel]!
    
    @IBAction func changeTextInLabel(_ sender: UIButton) {
        label.text = "Hello, world!"
        
        for item in labelCollection {
            item.backgroundColor = UIColor.blue
        }
    }
}

