//
//  ViewController.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/21/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblResults: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAreaCalculate(sender: AnyObject) {
        var arrayShapes = [Shape]()
        let circle = Circle(radius: 2.0)
        let square1 = Square(length: 5.0)
        let square2 = Square(length: 6.0)
        let cuboid = Cuboid(length: 3.0)
        arrayShapes.append(circle)
        arrayShapes.append(square1)
        arrayShapes.append(square2)
        arrayShapes.append(cuboid)
        
        
        let areas = AreaCalculator(shapes: arrayShapes)
        let outputAreas = SumCalculatorOutputter(calculator: areas)
        let arrayResultAreas = outputAreas.output()
    
        var results = ""
        for item in arrayResultAreas {
            results += " \(item) "
            print(item)
            
        }
        lblResults.text = results
    }

}

