//
//  Shape.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/21/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import Foundation

protocol ShapeInterface {
    func area() -> Float
}

protocol SolidShapeInterface {
    func volume() -> Float
}

protocol ManageShapeInterface {
    func calculate() -> Float
}

class Shape: ShapeInterface, ManageShapeInterface {
    var name:String = ""
    
    func area() -> Float {
        return 1.0
    }
    
    func volume() -> Float {
        return 1.0
    }
    
    func calculate() -> Float {
        return 1.0
    }

    
    
}