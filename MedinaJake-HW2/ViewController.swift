//
//  ViewController.swift
//  MedinaJake-HW2
//
//  Created by Jake Medina on 9/11/23.
//
// Project: MedinaJake-HW2
// EID: jrm7784
// Course: CS371L

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Outlets
    
    @IBOutlet weak var userIdField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Set delegates for UITextFieldDelegate
        userIdField.delegate = self
        passwordField.delegate = self
    }
    
    // Hide keyboard when 'return' key is pressed
    func textFieldShouldReturn(_ textField:UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Hide keyboard when user touches elsewhere on screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Actions

    // Checks for valid values in both input fields to display message
    @IBAction func buttonPressed(_ sender: Any) {
        if (userIdField.text!.isEmpty || passwordField.text!.isEmpty) {
            statusLabel.text = "Invalid login"
        } else {
            let userID = userIdField.text!
            statusLabel.text = "\(userID) logged in"
        }
    }
    
}

