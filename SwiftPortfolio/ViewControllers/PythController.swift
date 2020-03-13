//
//  PythController.swift
//  SwiftPortfolio
//
//  Created by Titov, Aleksandr on 3/11/20.
//  Copyright © 2020 Titov, Aleksandr. All rights reserved.
//

import UIKit

class PythController: UIViewController {
    
    @IBOutlet weak var sideATextField: UITextField!
    
    @IBOutlet weak var sideBTextField: UITextField!
    
    @IBOutlet weak var answerLabel: UILabel!
    
    var sides = (A: 0.0, B: 0.0, C: 0.0)
    
    
    func findHyp(){
        guard let _: Double = Double(sideATextField.text!) else {
            NSLog("side A is not a number value")
            return
        }
        guard let _: Double = Double(sideBTextField.text!) else {
            NSLog("side B is not a number value")
            return
        }
        sides.A = Double(sideATextField.text!)!
        sides.B = Double(sideBTextField.text!)!
        sides.C = sqrt(sides.0 * sides.0 + sides.1 * sides.1)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.findHyp()
        answerLabel.text = String(sides.2)
    }
    
}
