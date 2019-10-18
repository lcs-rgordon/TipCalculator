//
//  ViewController.swift
//  TipCalculator
//
//  Created by Gordon, Russell on 2019-10-10.
//  Copyright © 2019 Gordon, Russell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    // (outlets, variables, constants to be used anywhere below)
    @IBOutlet weak var billAmount: UITextField!
    
    @IBOutlet weak var peopleCount: UITextField!
    
    @IBOutlet weak var totalTipInDollars: UILabel!
    
    @IBOutlet weak var tipPerPersonInDollars: UILabel!
        
    // MARK: Methods
    // (functions, actions)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Calculate the tip and report results
    @IBAction func calculateTip(_ sender: UIButton) {
        
        // Get the user input
        guard let billAmountAsString = billAmount.text else {
            return
        }
        guard let peopleCountAsString = peopleCount.text else {
            return
        }
        
        // Get the percentage
        let tipPercentageAsDouble = Double(sender.tag) / 100
        
        // Convert all values to Double data type
        guard let billAmountAsDouble = Double(billAmountAsString) else {
            return
        }
        guard let peopleCountAsDouble = Double(peopleCountAsString) else {
            return
        }
        
        // Calculate total tip in dollars
        let totalTip = billAmountAsDouble * tipPercentageAsDouble
        // Now round to two decimal places
        let totalTipInCents = Int(totalTip * 100)
        let totalTipRounded = Double(totalTipInCents) / 100
        
        // Calculate tip per person in dollars
        let tipPerPersonAsDouble = totalTip / peopleCountAsDouble
        // Now round to two decimal places
        let tipPerPersonInCents = Int(tipPerPersonAsDouble * 100)
        let tipPerPersonInDollarsRounded = Double(tipPerPersonInCents) / 100
        
        // Send the results to the view
        totalTipInDollars.text = "$\(totalTipRounded)"
        tipPerPersonInDollars.text = "$\(tipPerPersonInDollarsRounded)"
    }
    
}

