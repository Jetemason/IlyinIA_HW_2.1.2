//
//  ViewController.swift
//  IlyinIA_HW_2.1.2
//
//  Created by Игорь Ильин on 30.01.2020.
//  Copyright © 2020 Igor Ilyin. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet var redCircle: UIView!
    @IBOutlet var yellowCircle: UIView!
    @IBOutlet var greenCircle: UIView!
    @IBOutlet var showButton: UIButton!
    
    @IBOutlet var circlesStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redCircle.alpha = 0.3
        yellowCircle.alpha = 0.3
        greenCircle.alpha = 0.3
        
        redCircle.layer.cornerRadius = 50
        
        
        
        
        
    }

    @IBAction func showButtonPressed() {
    }
    
    
}

