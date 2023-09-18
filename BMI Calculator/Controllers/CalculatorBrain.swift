//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Lorena on 19/05/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi : BMI?
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format:"%.1f", bmi?.value ?? 0.0 )
        return bmiTo1DecimalPlace
        
        
    }
    
    func getAdvice()-> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI (height : Float, weight: Float){
        let bmiValue = weight / ( height * height)
        let color = ( underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), healthy: #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1), overweight: #colorLiteral(red: 0.6067395806, green: 0.1101531908, blue: 0.1223188117, alpha: 1))
        
        
        if bmiValue < 18.5 {bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: color.underweight
        )
        } else if bmiValue < 24.9 {bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: color.healthy)
            
        }
        else {bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: color.overweight)
            
            
            
            
            
            
            
            
            //bmi = BMI(value: bmiValue, advice: <#T##String#>, color: <#T##UIColor#>)
            
            
            
        }
        
        
    }
}
