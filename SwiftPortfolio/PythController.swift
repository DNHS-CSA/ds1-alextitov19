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
    
    var sides = (0.0,0.0,0.0)
    
    
    func findHyp(){
        sides.0 = Double(sideATextField.text!)!
        sides.1 = Double(sideBTextField.text!)!
        sides.2 = sqrt(sides.0 * sides.0 + sides.1 * sides.1)
    }
    
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        self.findHyp()
        answerLabel.text = String(sides.2)
    }
    
}
