//
//  ViewController.swift
//  FoodTracker
//
//  Created by Justin Dang on 3/22/19.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    // MARK: actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default text"
    }
    
    
}

