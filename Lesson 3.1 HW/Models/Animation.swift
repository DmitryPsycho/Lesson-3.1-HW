//
//  Animation.swift
//  Lesson 3.1 HW
//
//  Created by Psycho on 05.08.2022.
//

import Foundation
import SpringAnimation

/* Хотел уточнить, импортировать фреймворк сразу в модель(что по идее не правильно)
 или же создавать дополнтиельный сервисный слой, в который передвать, в нашем случае
 названия анимаций, и уже из него подтягивать нужные значения?
 
 */

struct Animation {
    
    let title: String
    let curve: String
    
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomValues() -> Animation {
        Animation(
            title: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: Double.random(in: 0.1...1),
            duration: Double.random(in: 0.1...1),
            delay: Double.random(in: 0.1...1)
        )
    }
    
}
