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
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor() // must create an instance of UIColor to update attribute
        sendMailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder() // "loses focus" and closes keyboard
    }
    
    
}

