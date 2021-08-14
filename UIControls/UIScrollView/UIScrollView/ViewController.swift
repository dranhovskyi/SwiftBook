import UIKit

class ViewController: UIViewController {
    
    var uiElements = ["UISegmentedControl",
                      "UILabel",
                      "UISlider",
                      "UITextField",
                      "UIButton",
                      "UIDatePicker"]
    
    var selectedElement: String?

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var labelControl: UILabel!
    @IBOutlet weak var sliderControl: UISlider!
    @IBOutlet weak var textFieldControl: UITextField!
    @IBOutlet weak var buttonControl: UIButton!
    @IBOutlet weak var datePickerControl: UIDatePicker!
    @IBOutlet weak var hideElemetsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        choiceUiElement()
        createToolbar()
    }
    
    func hideAllElements() {
        segmentControl.isHidden = true
        labelControl.isHidden = true
        sliderControl.isHidden = true
        buttonControl.isHidden = true
        datePickerControl.isHidden = true
    }
    
    func choiceUiElement() {
        let elementPicker = UIPickerView()
        elementPicker.delegate = self
        
        textFieldControl.inputView = elementPicker
        
        // Customization
        elementPicker.backgroundColor = .brown
    }
    
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let toolbarDoneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(dismissKeyboard))
        
        toolbar.setItems([toolbarDoneButton], animated: true)
        toolbar.isUserInteractionEnabled = true
        textFieldControl.inputAccessoryView = toolbar
        
        // Customization
        toolbar.tintColor = .white
        toolbar.barTintColor = .brown
    }
    
    @objc func dismissKeyboard() {
        view.self.endEditing(true)
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
            segmentControl.isHidden = false
            labelControl.isHidden = false
            datePickerControl.isHidden = false
            buttonControl.isHidden = false
            sliderControl.isHidden = false
            textFieldControl.isHidden = false
        } else {
            hideElemetsLabel.text = "Скрыть все елементы"
            segmentControl.isHidden = true
            labelControl.isHidden = true
            datePickerControl.isHidden = true
            buttonControl.isHidden = true
            sliderControl.isHidden = true
            textFieldControl.isHidden = true
        }
    }
    
}


extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return uiElements.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return uiElements[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedElement = uiElements[row]
        textFieldControl.text = selectedElement
        
        switch row {
        case 0:
            hideAllElements()
            segmentControl.isHidden = false
        case 1:
            hideAllElements()
            labelControl.isHidden = false
        case 2:
            hideAllElements()
            sliderControl.isHidden = false
        case 3:
            hideAllElements()
        case 4:
            hideAllElements()
            buttonControl.isHidden = false
        case 5:
            hideAllElements()
            datePickerControl.isHidden = false
        default:
            hideAllElements()
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        
        var label = UILabel()
        if let currentViewLabel = view as? UILabel {
            label = currentViewLabel
        } else {
            label = UILabel()
        }
        
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 23)
        label.text = uiElements[row]
        
        
        return label
    }
}

