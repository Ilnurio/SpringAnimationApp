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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        let animation = Animation.getValue()

        springAnimationView.animation = animation.preset
    }
    
}



//@IBAction func runSpringAnimation(_ sender: SpringButton) {
//    springAnimationView.animation = "shake"
//    springAnimationView.curve = "easeInOut"
//    springAnimationView.force = 2
//    springAnimationView.animate()
//
//    sender.animation = "pop"
//    sender.duration = 2
//    sender.animate()
//}
