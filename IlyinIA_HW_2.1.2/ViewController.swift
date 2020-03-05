//
//  ViewController.swift
//  IlyinIA_HW_2.1.2
//
//  Created by Игорь Ильин on 30.01.2020.
//  Copyright © 2020 Igor Ilyin. All rights reserved.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var buttonStart: UIButton!
    
    private var currentLight = CurrentLight.red
    
    private let lightIsOn: CGFloat = 1
    private let lightsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonStart.layer.cornerRadius = 10
        
            
        redLight.alpha = lightsOff
        yellowLight.alpha = lightsOff
        greenLight.alpha = lightsOff
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }

    @IBAction func showButtonPressed() {
        
        buttonStart.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            redLight.alpha = lightsOff
            yellowLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            yellowLight.alpha = lightsOff
            greenLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightsOff
            redLight.alpha = lightIsOn
            currentLight = .red
        }
    }
    
    
}

