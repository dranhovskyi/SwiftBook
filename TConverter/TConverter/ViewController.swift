//
//  ViewController.swift
//  TConverter
//
//  Created by Nazar Dranhovskyi on 05.08.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var celsiusLabel: UILabel!
    @IBOutlet weak var farenheitLabel: UILabel!
    @IBOutlet weak var slider: UISlider! {
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let tepretureCelcius = Int(round(sender.value))
        celsiusLabel.text = "\(tepretureCelcius)ºC"
        let tempretureFarenheit = (tepretureCelcius * 9/5) + 32
        farenheitLabel.text = "\(tempretureFarenheit)ºF"
    }
    
}

