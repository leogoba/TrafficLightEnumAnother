//
//  ViewController.swift
//  TrafficLight
//
//  Created by leogoba on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var buttonLabel: UIButton!
    
    private let lightOff: CGFloat = 0.3
    private let lightOn: CGFloat = 1
    
    private var currentColor = Colors.green
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = lightOff
        yellowLightView.alpha = lightOff
        greenLightView.alpha = lightOff
    }
    
    override func viewDidLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = redLightView.frame.height / 2
        greenLightView.layer.cornerRadius = redLightView.frame.height / 2
        buttonLabel.layer.cornerRadius = buttonLabel.frame.height / 2
    }

    @IBAction func buttonTapped() {
        if buttonLabel.titleLabel?.text == "START" {
            buttonLabel.setTitle("NEXT", for: .normal)
        }
        
        switch currentColor {
        case .red:
            redLightView.alpha = lightOff
            yellowLightView.alpha = lightOn
            currentColor = .yellow
        case .yellow:
            yellowLightView.alpha = lightOff
            greenLightView.alpha = lightOn
            currentColor = .green
        case .green:
            greenLightView.alpha = lightOff
            redLightView.alpha = lightOn
            currentColor = .red
        }
    }
}
