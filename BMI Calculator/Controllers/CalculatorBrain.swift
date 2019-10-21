//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Hadia Andar on 10/21/19.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    
    var bmi: BMI? //bmi is float of 0.0
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0) //nill coalesing operator: if bmi is not nil, then use that number, otherwise, use 0.0 as the number
        return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2) //changing struct value
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
        //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
        //bmiValue = String(format: "%.1f", bmi)
    }
}
