//
//  Circle.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/21/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import Foundation

class Circle: Shape {
    var radius:Float
    
    init(radius: Float) {
        self.radius = radius
    }
    
    override func area() -> Float {
        return Float(M_PI) * powf(self.radius, 2)
    }
    
    override func calculate() -> Float {
        return self.area()
    }

    
}
