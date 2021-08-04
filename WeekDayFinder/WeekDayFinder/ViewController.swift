//
//  ViewController.swift
//  WeekDayFinder
//
//  Created by Nazar Dranhovskyi on 04.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var monthTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func findDay(_ sender: UIButton) {
        let calendar = Calendar.current
        
        guard let day = dateTextField.text, let month = monthTextField.text, let year = yearTextField.text else { return }
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        guard let date = calendar.date(from: dateComponents) else { return }
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "ru_RU")
        dateFormatter.dateFormat = "EEEE"
        let weekDay = dateFormatter.string(from: date)
        let capitalizedWeekDay = weekDay.capitalized
        
        resultLabel.text = capitalizedWeekDay
    }
}

