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
    
    @IBOutlet weak var tipPercentage: UITextField!
    
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
    @IBAction func calculateTip(_ sender: Any) {
        
        
    }
    


}

