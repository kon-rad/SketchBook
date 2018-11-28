//
//  ViewController.swift
//  SketchBook
//
//  Created by Konrad Gnat on 11/20/18.
//  Copyright © 2018 Konrad Gnat. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var sketchNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks.
        nameTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the keyboard.
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        sketchNameLabel.text = textField.text
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        sketchNameLabel.text = "Default Text"
    }
}

