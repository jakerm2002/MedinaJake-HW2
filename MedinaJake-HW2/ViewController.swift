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

class ViewController: UIViewController {

    // Outlets
    
    @IBOutlet weak var userIdField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Hide keyboard when user touches elsewhere on screen
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    // Actions

    // Checks for valid values in both input fields to display message
    @IBAction func buttonPressed(_ sender: Any) {
        if (userIdField.text == "" || passwordField.text == "") {
            statusLabel.text = "Invalid login"
        } else {
            let userID = userIdField.text!
            statusLabel.text = "\(userID) logged in"
        }
    }
    
}

