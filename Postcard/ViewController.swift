//
//  ViewController.swift
//  Postcard
//
//  Created by Falco Huizinga on 03/11/14.
//  Copyright (c) 2014 Falco Huizinga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextfield: UITextField!
    @IBOutlet weak var enterMessageTextfield: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Adding a comment
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextfield.text
        messageLabel.textColor = UIColor.redColor()
        
        enterMessageTextfield.text = ""
        enterMessageTextfield.resignFirstResponder()

        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)

    }
    

}

