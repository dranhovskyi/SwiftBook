//
//  ViewController.swift
//  UISlider
//
//  Created by Nazar Dranhovskyi on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelControl: UILabel!
    @IBOutlet weak var sliderControl: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        sliderControl.minimumValue = 0
        sliderControl.maximumValue = 1
        sliderControl.value = sliderControl.maximumValue
        sliderControl.minimumTrackTintColor = .yellow
        sliderControl.maximumTrackTintColor = .red
        sliderControl.thumbTintColor = .blue
        
        labelControl.text = String(sliderControl.value)
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        labelControl.text = String(sender.value)
        
        let backgroundColor = self.view.backgroundColor
        
        self.view.backgroundColor = backgroundColor?.withAlphaComponent(CGFloat(sender.value))
    }
}

