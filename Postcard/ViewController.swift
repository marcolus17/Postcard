//
//  ViewController.swift
//  Postcard
//
//  Created by Nicholas Markworth on 1/28/15.
//  Copyright (c) 2015 Nick Markworth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // TapGestureRecognizer for dismissing the keyboard
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: "endEditing:"))
    }
    
    // Function that handles TapGestureRecognizer in ViewDidLoad
    func endEditing(recognizer: UITapGestureRecognizer) {
        // Ends editing mode and dismisses the keyboard
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // set attributes of the message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor() // must create an instance of UIColor to update attribute
        
        // set attributes of the name label
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        // set attributes of the message text field
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() // "loses focus" and closes keyboard
        
        // set attributes of the name text field
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        // set attributes of the send mail button
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal) // must use a function because of second parameter
    }
    
    
}

