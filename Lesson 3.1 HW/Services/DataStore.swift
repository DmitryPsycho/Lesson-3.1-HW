//
//  AnimationsStore.swift
//  Lesson 3.1 HW
//
//  Created by Psycho on 06.08.2022.
//

import Foundation
import SpringAnimation

class SpringAnimationsSource {
    
    static let shared = SpringAnimationsSource()
    
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
    
}
