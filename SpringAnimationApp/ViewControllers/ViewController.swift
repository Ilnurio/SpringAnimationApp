//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Ilnur on 02.05.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    @IBOutlet var runButtonLabel: SpringButton!
    
    var animation = Animation.getValue()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runButtonLabel.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .bold)
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        
        for animation in animation.preset {
            springAnimationView.animation = animation
            presetLabel.text = "preset: \(animation)"
        }
     
        for curve in animation.curve {
            springAnimationView.curve = curve
            curveLabel.text = "curve: \(curve)"
        }
        
        springAnimationView.force = animation.force
        forceLabel.text = "forse: \(springAnimationView.force)"
        
        springAnimationView.duration = animation.duration
        durationLabel.text = "duration: \(springAnimationView.duration)"
        
        springAnimationView.delay = animation.delay
        delayLabel.text = "delay: \(springAnimationView.delay)"
        
        springAnimationView.animate()
        
        animation = Animation.getValue()
        for preset in animation.preset {
            runButtonLabel.setTitle("Run: \(preset)", for: .normal)
        }
    }
    
}
