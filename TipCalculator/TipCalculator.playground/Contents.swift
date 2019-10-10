import UIKit

// Text fields
let mealAmount = UITextField()  // dollars
let tipPercentage = UITextField()     // percent

// Simulate user input
mealAmount.text = "100"
tipPercentage.text = "15"

// Get actual strings (strings that are not optional)
// We can assume correct user input
let mealAmountAsString = mealAmount.text!
let tipPercentageAsString = tipPercentage.text!

// Convert to Double data type
let mealAmountAsDouble = Double(mealAmountAsString)!
let tipPercentageAsDouble = Double(tipPercentageAsString)! / 100

// Try the calculation
// We know that a 15% tip on $100 should result in a $15 tip
let tipDollars = mealAmountAsDouble * tipPercentageAsDouble
