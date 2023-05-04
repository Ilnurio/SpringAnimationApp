//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Ilnur on 02.05.2023.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getValue() -> Animation {
        let animations = DataSource.shared.animations.randomElement() ?? "wobble"
        let curves = DataSource.shared.curves.randomElement() ?? "easeIn"
        
        let animation = Animation(
            preset: animations,
            curve: curves,
            force: Double(round(10 * Double.random(in: 1...1.5)) / 10),
            duration: Double(round(10 * Double.random(in: 1...2)) / 10),
            delay: Double(round(10 * Double.random(in: 0...1)) / 10)
        )
        return animation
    }
}
