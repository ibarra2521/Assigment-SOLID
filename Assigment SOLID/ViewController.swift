//
//  ViewController.swift
//  Assigment SOLID
//
//  Created by Nivardo Ibarra on 11/21/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtfRadio: UITextField!
    @IBOutlet weak var txtfLadoCuadrado: UITextField!
    @IBOutlet weak var txtfLadoCubo: UITextField!
    @IBOutlet weak var txtfAreaCirculo: UITextField!
    @IBOutlet weak var txtfAreaCuadrado: UITextField!
    @IBOutlet weak var txtfVolumenCubo: UITextField!
    
    
    
    
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
        var arrayVolume = [Shape]()
        let circle = Circle(radius: Float(txtfRadio.text!)!)
        let square1 = Square(length: Float(txtfLadoCuadrado.text!)!)
        let cuboid = Cuboid(length: Float(txtfLadoCubo.text!)!)
        arrayShapes.append(circle)
        arrayShapes.append(square1)
        arrayVolume.append(cuboid)
        
        let areas = AreaCalculator(shapes: arrayShapes)
        let outputAreas = SumCalculatorOutputter(calculator: areas)
        let arrayResultAreas = outputAreas.output()
    
        var results = ""
        for item in arrayResultAreas {
            results += " \(item) "
            print(item)
            
        }
        txtfAreaCirculo.text = String(arrayResultAreas[0])
        txtfAreaCuadrado.text = String(arrayResultAreas[1])
        let volume = VolumeCalculator(shapes: arrayVolume);
        volume.getArea()
        volume.getVolume()
        txtfVolumenCubo.text = String(volume.getVolume()[0])
    }

}

