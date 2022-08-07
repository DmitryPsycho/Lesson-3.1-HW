//
//  AnimationViewController.swift
//  Lesson 3.1 HW
//
//  Created by Psycho on 04.08.2022.
//

import UIKit
import SpringAnimation

class AnimationViewController: UIViewController {
    
    @IBOutlet var springPresetLabel: UILabel! {
        didSet {
            springPresetLabel.text = randomAnimationValues.description
        }
    }
    
    @IBOutlet var springMainView: SpringView!
    @IBOutlet var springButton: UIButton!
    
    private var randomAnimationValues = Animation.getRandomValues()
    
    @IBAction func springButtonPressed() {
        setAnimationChain()
    }
    
    private func setAnimationChain() {
        springPresetLabel.text = randomAnimationValues.description
        
        springMainView.animation = randomAnimationValues.title
        springMainView.curve = randomAnimationValues.curve
        springMainView.force = randomAnimationValues.force
        springMainView.duration = randomAnimationValues.duration
        springMainView.delay = randomAnimationValues.delay
        springMainView.animate()
        
        randomAnimationValues = Animation.getRandomValues()
        springButton.setTitle(
            "Run \(randomAnimationValues.title)",
            for: .normal
        )
    }
}

