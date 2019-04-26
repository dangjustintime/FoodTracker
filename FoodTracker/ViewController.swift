//
//  ViewController.swift
//  FoodTracker
//
//  Created by Justin Dang on 3/22/19.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // handle the text view's user input through delegate callbacks
        nameTextField.delegate = self
    }

    // MARK: UITextViewDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide keyboard
        textField.resignFirstResponder()
        return true
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
    }
    
    // MARK: actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default text"
    }
    
    
}

