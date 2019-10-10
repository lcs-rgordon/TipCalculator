import UIKit

// Meal amount
let amountOfMeal = "100.00"
let amountOfMealAsDouble = Double(amountOfMeal)!

// Tip percentage
let tipPercentage = "10"
let tipPercentageAsDouble = Double(tipPercentage)! / 100

// Tip amount
let tipAmount = amountOfMealAsDouble * tipPercentageAsDouble
