//
//  Animation.swift
//  Lesson 3.1 HW
//
//  Created by Psycho on 05.08.2022.
//

import Foundation

struct Animation {
    
    let title: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        return """
        Preset: \(title)
        Curve: \(curve)
        \(String(format: "Force = %.1f", force))
        \(String(format: "Duration = %.1f", duration))
        \(String(format: "Delay = %.1f", delay))
        """
    }
    
    static func getRandomValues() -> Animation {
        Animation(
            title: SpringAnimationsSource.shared.animationPresets.randomElement()?.rawValue ?? "",
            curve: SpringAnimationsSource.shared.animationCurves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 1...2),
            delay: Double.random(in: 0...1)
        )
    }
}
