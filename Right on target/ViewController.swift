//
//  ViewController.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 08.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var number = 0
    var round = 0
    var points = 0
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "mainColor")
        
        slider.minimumValue = 1
        slider.maximumValue = 50
        
        
// gradient for slider
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = CGRect(x: 0, y: 0, width: slider.bounds.width, height: slider.bounds.height)
//
//        let startColor = UIColor(named: "startColor")
//        let endColor = UIColor(named: "endColor")
//
//        gradientLayer.colors = [startColor!, endColor!]
//        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
//        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)
//
//        let maskLayer = CALayer()
//        maskLayer.frame = CGRect(x: 0, y: 0, width: slider.bounds.width * CGFloat(slider.value), height: slider.bounds.height)
//        maskLayer.borderColor = UIColor.black.cgColor
//        gradientLayer.mask = maskLayer
//        slider.layer.insertSublayer(gradientLayer, at: 0)
//
//        func sliderValueChanged(_ sender: UISlider) {
//            maskLayer.frame.size.width = slider.bounds.width * CGFloat(sender.value)
//        }
        
        label.textColor = UIColor(named: "textColor")
        
        button.setTitle("Check", for: .normal)
        button.setTitleColor(UIColor(named: "textColor"), for: .normal)
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor(named: "textColor")?.cgColor
        
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func checkNumber() {
        print(round)
        if round == 0 {
            number = Int.random(in: 1...50)
            label.text = String(number)
            round = 1
        } else {
            let numSlider = Int(slider.value.rounded())
            if numSlider < number {
                points += 50 - number + numSlider
            } else if numSlider > number {
                points += 50 + number - numSlider
            } else {
                points += 50
            }
        }
        if round == 5 {
            print("dsfsdfsdfsdf")
            let alert = UIAlertController(
                title: "FINISH",
                message: "Your scored: \(points) points",
                preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("Начать заново", comment: "Default action"), style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            round = 1
            points = 0
        } else {
            round += 1
        }
        number = Int.random(in: 1...50)
        label.text = String(number)
    }
    
    
}

