//
//  GameRound.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 09.07.2023.
//

import Foundation

protocol GameRoundProtocol {
    var score: Int { get }
    var currentSecretValue: Int { get }
    func calculatedScore(with value: Int)
}

class GameRound: GameRoundProtocol {
    var score: Int = 0
    var currentSecretValue: Int
    
    init(currentSecretValue: Int) {
        self.currentSecretValue = currentSecretValue
    }
    
    func calculatedScore(with value: Int) {
        if value > currentSecretValue {
            score += 50 - value + currentSecretValue
        } else if value < currentSecretValue {
            score += 50 - currentSecretValue + value
        } else {
            score += 50
        }
    }
}
