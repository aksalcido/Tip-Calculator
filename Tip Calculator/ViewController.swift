//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Armando on 4/1/19.
//  Copyright © 2019 codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountLabel: UITextField!

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var customLabel: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var firstPersonLabel: UILabel!
    
    @IBOutlet weak var secondPersonLabel: UILabel!
    
    @IBOutlet weak var thirdPersonLabel: UILabel!
    
    @IBOutlet weak var fourthPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill = Double(amountLabel.text!) ?? 0
        
        let custom_amount =
            Double(customLabel.text!)
            ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2, custom_amount / 100]
        
        // Calculate the tip and total
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        
        totalLabel.text = String(format: "$%.2f", total)
        
        firstPersonLabel.text = String(format: "$%.2f", total)
        
        secondPersonLabel.text = String(format: "$%.2f",
            total / 2)
        
        thirdPersonLabel.text =
            String(format: "$%.2f",
            total / 3)
        
        fourthPersonLabel.text =
            String(format: "$%.2f",
            total / 4)

    }
    
}

