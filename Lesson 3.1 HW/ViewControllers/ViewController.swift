//
//  ViewController.swift
//  Lesson 3.1 HW
//
//  Created by Psycho on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var springPresetLable: UILabel!
    @IBOutlet var springCurveLable: UILabel!
    @IBOutlet var springForceLable: UILabel!
    @IBOutlet var springDurationLable: UILabel!
    @IBOutlet var springDelayLable: UILabel!
    
    @IBOutlet var springMainView: SpringView!
    @IBOutlet var springButton: UIButton!
    
    private var randomAnimationValues = Animation.getRandomValues()
    
    override func viewDidLoad() {
        setValues()
    }
    
    @IBAction func springButtonPressed() {
        setValues()
        setAnimation()
    }
    
    private func setAnimation() {
        springMainView.animation = randomAnimationValues.title
        springMainView.curve = randomAnimationValues.curve
        springMainView.force = randomAnimationValues.force
        springMainView.duration = randomAnimationValues.duration
        springMainView.delay = randomAnimationValues.delay
        springMainView.animate()
        
        randomAnimationValues = Animation.getRandomValues()
        springButton.setTitle(
            "Run \(randomAnimationValues.title)",
            for: .normal)
    }
    
    private func setValues() {
        springPresetLable.text = "Preset: \(randomAnimationValues.title)"
        springCurveLable.text = "Curve: \(randomAnimationValues.curve)"
        springForceLable.text = String(format: "Force = %.1f\n", randomAnimationValues.force)
        springDurationLable.text = String(format: "Duration = %.1f\n", randomAnimationValues.duration)
        springDelayLable.text = String(format: "Delay = %.1f\n", randomAnimationValues.delay)
    }
    
}

