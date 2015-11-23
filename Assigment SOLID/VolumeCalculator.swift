//
//  VolumeCalculator.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/21/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import Foundation

class VolumeCalculator: AreaCalculator {
    
    func sum () -> String {
        var sumData = ""
        for shape in self.shapes {
            sumData += (String(shape.calculate()))
        }
        return sumData
    }
    
    func getArea () -> [Float] {
        var areas = [Float]()
        for shape in self.shapes {
            areas.append(shape.area())
        }
        return areas
    }

    func getVolume () -> [Float] {
        var volumes = [Float]()
        for shape in self.shapes {
            volumes.append(shape.volume())
        }
        return volumes
    }

}