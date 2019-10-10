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
    
    // Default tip value as percentage
    var tipPercentageAsDouble = 0.15
    
    
    // MARK: Methods
    // (functions, actions)
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // Calculate the tip and report results
    func calculateTip() {
        
        // Get the user input
        let billAmountAsString = billAmount.text!
        let peopleCountAsString = peopleCount.text!
        
        // Convert all values to Double data type
        let billAmountAsDouble = Double(billAmountAsString)!
        let peopleCountAsDouble = Double(peopleCountAsString)!
        
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
    
    
    @IBAction func fivePercent(_ sender: Any) {
        tipPercentageAsDouble = 0.05
        calculateTip()
    }
    
    @IBAction func tenPercent(_ sender: Any) {
        tipPercentageAsDouble = 0.10
        calculateTip()
    }
    
    @IBAction func fifteenPercent(_ sender: Any) {
        tipPercentageAsDouble = 0.15
        calculateTip()
    }
    
    @IBAction func twentyPercent(_ sender: Any) {
        tipPercentageAsDouble = 0.20
        calculateTip()
    }
    

}

