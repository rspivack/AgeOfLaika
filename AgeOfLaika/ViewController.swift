//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Robert E Spivack on 10/11/14.
//  Copyright (c) 2014 Robert E. Spivack. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var enterHumanYearsTextField: UITextField!
    
    @IBOutlet weak var dogYearsLabel: UILabel!
    
    
    @IBOutlet weak var convertedDogYearsLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func convertToDogYears(sender: UIButton) {
        
        let humanAge = enterHumanYearsTextField.text.toInt()!
        let conversionConstant = 7
        
        convertedDogYearsLabel.text = enterHumanYearsTextField.text + " Human years is " +
            "\(humanAge * conversionConstant)" + " in Dog years"
        
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
        convertedDogYearsLabel.hidden = false
    }
    
    @IBAction func convertToRealDogYearsButton(sender: UIButton) {
        
        let humanAge = Double((enterHumanYearsTextField.text as NSString).doubleValue)
        var realDogYears = 0.0

        if humanAge <= 2.0 {
            realDogYears = humanAge * 10.5
        }
        else {
            realDogYears = (2.0 * 10.5) + ((humanAge - 2.0) * 4)
        }
        
        
        convertedDogYearsLabel.text = enterHumanYearsTextField.text + " Human years is " +
            "\(realDogYears)" + " in Dog years"
        
        enterHumanYearsTextField.text = ""
        enterHumanYearsTextField.resignFirstResponder()
        convertedDogYearsLabel.hidden = false
        
        
    }
}

