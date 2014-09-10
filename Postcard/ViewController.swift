//
//  ViewController.swift
//  Postcard
//
//  Created by alvaro on 10/09/14.
//  Copyright (c) 2014 Alvaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet var messageLabel : UILabel
    @IBOutlet var nameLabel : UILabel
    
    @IBOutlet var enterNameTextField : UITextField
    @IBOutlet var enterMessageTextField : UITextField
    
    @IBOutlet var mailButton : UIButton
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender : UIButton)
    {
        // Code will evaluate when we press the button
        messageLabel.hidden = false
        messageLabel.text  = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()
        
        mailButton.setTitle("Mail sent", forState: UIControlState.Normal)
        
        
        
    }

}

