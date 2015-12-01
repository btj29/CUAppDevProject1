//
//  ViewController.swift
//  Project 1
//
//  Created by Bernard JIANG on 22/9/15.
//  Copyright © 2015 Bernard JIANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var unInput: UITextField!
    @IBOutlet weak var pwInput: UITextField!
    @IBOutlet weak var unLabel: UILabel!
    @IBOutlet weak var pwLabel: UILabel!
    @IBOutlet weak var aSwitch: UISwitch!
    @IBOutlet weak var secretMessage: UILabel!
    @IBOutlet weak var secretInput: UITextField!
    @IBOutlet weak var secretPic: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.orangeColor()
        unLabel.textColor = UIColor.blueColor()
        pwLabel.textColor = UIColor.blueColor()
        secretInput.hidden = true;
        secretMessage.hidden = true;
        secretPic.hidden = true;
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func revMessage(sender: UIButton) {
        if (unInput.text == "username") && (pwInput.text == "password") && aSwitch.on {
            message.text = "You unlocked the secret message"
            message.shadowColor = UIColor.blackColor()
            message.textColor = UIColor.orangeColor()
            message.font = UIFont(name: "American Typewriter", size: 20)
            
            secretInput.hidden = false;
            secretMessage.hidden = false;
            secretPic.hidden = false;
        } else {
            message.text = "Incorrect username or password"
            message.textColor = UIColor.redColor()
            message.font = UIFont(name: "Times New Roman", size: 20)
            
        }
        
    }

}

