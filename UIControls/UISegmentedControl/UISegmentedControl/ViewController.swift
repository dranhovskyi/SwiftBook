//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Nazar Dranhovskyi on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var labelControl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelControl.isHidden = true
        labelControl.textAlignment = .center
        labelControl.font = labelControl.font.withSize(35)
        labelControl.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }


    @IBAction func segmentedChanged(_ sender: UISegmentedControl) {
        
        labelControl.isHidden = false
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            labelControl.text = "The first segment is selected"
            labelControl.textColor = .red
        case 1:
            labelControl.text = "The second segment is selected"
            labelControl.textColor = .blue
        case 2:
            labelControl.text = "The third segment is selected"
            labelControl.textColor = .yellow
        default:
            print("Unkown selected segment index")
            labelControl.isHidden = true
        }
        
    }
}

