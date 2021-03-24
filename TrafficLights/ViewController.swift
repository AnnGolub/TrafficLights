//
//  ViewController.swift
//  TrafficLights
//
//  Created by Анна Голубева on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColour: UIView!
    @IBOutlet weak var yellowColour: UIView!
    @IBOutlet weak var greenColour: UIView!
    @IBOutlet weak var startProcessButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redColour.layer.cornerRadius = 78
        yellowColour.layer.cornerRadius = 78
        greenColour.layer.cornerRadius = 78
        startProcessButton.layer.cornerRadius = 16
        redColour.alpha = 0.3
        yellowColour.alpha = 0.3
        greenColour.alpha = 0.3
    }
    
    @IBAction func startProcessPressed() {
        startProcessButton.setTitle("NEXT", for: .normal)
        
        if redColour.alpha == yellowColour.alpha {
            redColour.alpha = 1.0
            greenColour.alpha = 0.3
        } else if redColour.alpha > 0.3 && yellowColour.alpha == greenColour.alpha {
            yellowColour.alpha = 1.0
            redColour.alpha = 0.3
        } else if yellowColour.alpha > 0.3 && greenColour.alpha == redColour.alpha {
            greenColour.alpha = 1.0
            yellowColour.alpha = 0.3
        }
    }
    
}

