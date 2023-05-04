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
        setUpLabels()
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.delay = animation.delay
        springAnimationView.animate()
        
        setUpLabels()
        
        animation = Animation.getValue()
        runButtonLabel.setTitle("Run: \(animation.preset)", for: .normal)
    }
}

 // MARK: - setUpLabels
extension ViewController {
    private func setUpLabels() {
        presetLabel.text = "preset: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "forse: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = "delay: \(animation.delay)"
    }
}
