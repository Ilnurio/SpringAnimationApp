//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Ilnur on 02.05.2023.
//

import Foundation

struct Animation {
    
    var preset: [String]
    var curve: [String]
    var force: Double
    var duration: Double
    var delay: Double
    
    static func getValue() -> Animation {
        let animations = DataSource.shared.animations.shuffled()
        let curves = DataSource.shared.curves.shuffled()
        
        let animation = Animation(
            preset: animations,
            curve: curves,
            force: Double(round(10 * Double.random(in: 0...1)) / 10),
            duration: Double(round(10 * Double.random(in: 0...1)) / 10),
            delay: Double(round(10 * Double.random(in: 0...1)) / 10)
        )
        return animation
    }
}
