//
//  ViewController.swift
//  UITextView
//
//  Created by Nazar Dranhovskyi on 14.08.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textViewButtomConstraint: NSLayoutConstraint!
    @IBOutlet weak var stepperControl: UIStepper!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        textView.text = ""
        textView.backgroundColor = self.view.backgroundColor
        textView.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 17)
        textView.layer.cornerRadius = 10
        
        stepperControl.value = 17
        stepperControl.minimumValue = 10
        stepperControl.maximumValue = 25
        stepperControl.tintColor = .white
        stepperControl.backgroundColor = .gray
        stepperControl.layer.cornerRadius = 5
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateTextView(notification:)),
                                               name: UIResponder.keyboardWillShowNotification,
                                               object: nil)
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateTextView(notification:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
        // textView.resignFirstResponder() // скрывает клавиатуру для вызваного елемента
    }
    
    @objc func updateTextView(notification: Notification) {
        guard let userInfo = notification.userInfo as? [String: Any],
              let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue
        else {
            return
        }
        
        if notification.name == UIResponder.keyboardWillHideNotification {
            textView.contentInset = UIEdgeInsets.zero
        } else if notification.name == UIResponder.keyboardWillShowNotification {
            textView.contentInset = UIEdgeInsets.init(top: 0,
                                                      left: 0,
                                                      bottom: keyboardFrame.height - textViewButtomConstraint.constant,
                                                      right: 0)
            textView.scrollIndicatorInsets = textView.contentInset
        }
        
        textView.scrollRangeToVisible(textView.selectedRange)
    }
    
    @IBAction func changeFont(_ sender: UIStepper) {
        let font = textView.font?.fontName
        let fontSize = CGFloat(sender.value)
        textView.font = UIFont(name: font!, size: fontSize)
    }
    
}

extension ViewController: UITextViewDelegate {
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        textView.backgroundColor = .white
        textView.textColor = .gray
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        textView.backgroundColor = self.view.backgroundColor
        textView.textColor = .black
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        countLabel.text = "\(textView.text.count)"
        return textView.text.count + (text.count - range.length) <= 60
    }
}

