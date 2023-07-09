//
//  ViewController.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 08.07.2023.
//

import UIKit

class NumberViewController: UIViewController {
    
    var game: Game!
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "mainColor")
        
        slider.minimumValue = 1
        slider.maximumValue = 50
        
        label.textColor = UIColor(named: "textColor")
        
        button.setTitle("Check", for: .normal)
        button.setTitleColor(UIColor(named: "textColor"), for: .normal)
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor(named: "textColor")?.cgColor
        
        let generator = NumberGenerator(startRangeValue: 1, endRangeValue: 50)
        game = Game(secretValueGenerator: generator, roundCount: 5)
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    //MARK: update sekret Number
    private func updateLabelWithSecretNumber(newText: String) {
        label.text = newText
    }
    
    private func showAlertWith(score: Int) {
        let alert = UIAlertController(title: "FINISH", message: "You scored: \(score) points", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "New game", style: .default))
        present(alert, animated: true)
    }
    
    
    @IBAction func checkNumber() {
        game.currentRound.calculatedScore(with: Int(slider.value))
        if game.isGameEnded {
            showAlertWith(score: game.score)
            game.restartGame()
        } else {
            game.startNewRound()
        }
        
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    
}

