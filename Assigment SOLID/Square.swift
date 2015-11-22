//
//  Square.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/21/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import Foundation

class Square: Shape {
    var length:Float
    
    init(length: Float) {
        self.length = length
    }
    
    override func area() -> Float {
        return powf(self.length, 2)
    }
    
    override func calculate() -> Float {
        return self.area()
    }
        
}