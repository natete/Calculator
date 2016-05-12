//
//  ViewController.swift
//  Calculator
//
//  Created by Nacho GlezBul on 12/5/16.
//  Copyright © 2016 Nacho GlezBul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func buttonPressed(sender: AnyObject) {
        let button = sender as! UIButton
        if displayText.text == "0" && button.titleLabel?.text != "0" {
            displayText.text = button.titleLabel?.text
        } else if displayText.text != "0" {
            displayText.text! += (button.titleLabel?.text)!
        }
    }
    @IBAction func clearScreen(sender: AnyObject) {
        displayText.text = "0"
    }
    @IBAction func addDot(sender: AnyObject) {
        if !(displayText.text?.containsString("."))! {
            let button = sender as! UIButton
            displayText.text! += (button.titleLabel?.text)!
        }
    }
}

