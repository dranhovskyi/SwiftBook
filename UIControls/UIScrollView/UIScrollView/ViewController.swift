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
    @IBOutlet weak var hideElemetsLabel: UILabel!
    @IBOutlet weak var sliderControl: UISlider!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var textFieldControl: UITextField!
    @IBOutlet weak var buttonControl: UIButton!
    
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
    
    @IBAction func hideElemets(_ sender: UISwitch) {
        segmentControl.isHidden = !segmentControl.isHidden
        labelControl.isHidden = !labelControl.isHidden
        datePickerControl.isHidden = !datePickerControl.isHidden
        buttonControl.isHidden = !buttonControl.isHidden
        sliderControl.isHidden = !sliderControl.isHidden
        textFieldControl.isHidden = !textFieldControl.isHidden
        if (sender.isOn) {
            hideElemetsLabel.text = "Отобразить все елементы"
        } else {
            hideElemetsLabel.text = "Скрыть все елементы"
        }
    }
    
}

