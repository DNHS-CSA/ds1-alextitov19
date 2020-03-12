
//
//  File.swift
//  SwiftPortfolio
//
//  Created by Titov, Aleksandr on 3/12/20.
//  Copyright © 2020 Titov, Aleksandr. All rights reserved.
//

import UIKit

class SquareController: UIViewController {
    
    
    @IBOutlet weak var sideATextField: UITextField!
    @IBOutlet weak var sideBTextField: UITextField!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var perimeterLabel: UILabel!
    
    var  attributes = (0.0, 0.0, 0.0, 0.0)
    
    func calculateAttributes() {
         guard let _: Double = Double(sideATextField.text!) else {
            NSLog("side A is not a number value")
            return
        }
        guard let _: Double = Double(sideBTextField.text!) else {
            NSLog("side B is not a number value")
            return
        }
        attributes.0 = Double(sideATextField.text!)!
        attributes.1 = Double(sideBTextField.text!)!
        attributes.2 = attributes.0 * attributes.1
        attributes.3 = 2 * (attributes.0 + attributes.1)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.calculateAttributes()
        areaLabel.text = String(attributes.2)
        perimeterLabel.text = String(attributes.3)
        
    }
    
    
    
    
}
