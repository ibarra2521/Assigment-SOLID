//
//  SumCalculatorOutputter.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/22/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import Foundation

class SumCalculatorOutputter {
    var calculator: AreaCalculator
    
    init(calculator: AreaCalculator){
        self.calculator = calculator
    }
    
    func output() -> [Float] {
        return calculator.sum()
    }
}