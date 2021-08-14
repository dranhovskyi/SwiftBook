//
//  ViewController.swift
//  UIScrollView
//
//  Created by Nazar Dranhovskyi on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelControl: UILabel!
    @IBOutlet weak var datePickerControl: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelControl.numberOfLines = 2
    }
    
    @IBAction func dateAction(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.locale = Locale(identifier: "ru_RU")
        labelControl.text = dateFormatter.string(from: sender.date)
    }
    
}

