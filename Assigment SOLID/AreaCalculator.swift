//
//  AreaCalculator.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/21/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import Foundation

class AreaCalculator {
    var shapes = [Shape]()
    
    init(shapes: [Shape]) {
        self.shapes = shapes
    }
    
    func sum () -> [Float] {
        var areas = [Float]()
        for shape in self.shapes {
            areas.append(shape.calculate())
        }
        return areas
    }
    
}