//
//  ViewController.swift
//  TrafficLights
//
//  Created by Никита Микрюков on 24.06.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var red: UIView!
    @IBOutlet weak var yellow: UIView!
    @IBOutlet weak var green: UIView!
    @IBOutlet weak var showButton: UIButton!
    
    private let bright = 1
    private let pale = 0.1
    private var step = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.alpha = CGFloat(pale)
        yellow.alpha = CGFloat(pale)
        green.alpha = CGFloat(pale)
        showButton.layer.cornerRadius = 10
      
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews (){
      
        red.layer.cornerRadius = red.frame.size.width/2
        yellow.layer.cornerRadius = red.frame.size.width/2
        green.layer.cornerRadius = red.frame.size.width/2
    }
    
    @IBAction func ShowButtonPress() {
        showButton.setTitle("Next", for: .normal)
      
        if step == 1 {
            green.alpha = CGFloat(pale)
            red.alpha = CGFloat(bright)
            step = 2
    }
        else if step == 2 {
            yellow.alpha = CGFloat(bright)
            red.alpha = CGFloat(pale)
                 step = 3
         }
        else if step == 3 {
            green.alpha = CGFloat(bright)
            yellow.alpha = CGFloat(pale)
                step = 1
        }
    }
    
}

