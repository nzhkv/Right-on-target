//
//  Game.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 09.07.2023.
//

import Foundation

protocol GameProtocol {
    var score: Int { get }
    var currentRound: GameRoundProtocol! { get }
    var isGameEnded: Bool { get }
    var secretValueGenerator: GeneratorPritocol! { get }
    
    func restartGame()
    func startNewRound()
//    func calculateScore(with value: Int)
}

class Game: GameProtocol {
    var score: Int {
        var totalScore: Int = 0
        for round in rounds {
            totalScore += round.score
        }
        return totalScore
    }
    private var rounds: [GameRoundProtocol] = []
    var currentRound: GameRoundProtocol!
    var secretValueGenerator: GeneratorPritocol!
    private var roundCount: Int!
    
    var isGameEnded: Bool {
        if roundCount == rounds.count {
            return true
        } else {
            return false
        }
    }
    
    init(secretValueGenerator: GeneratorPritocol, roundCount: Int) {
        self.secretValueGenerator = secretValueGenerator
        self.roundCount = roundCount
        startNewRound()
    }
    
    func restartGame() {
        rounds = []
        startNewRound()
    }
    
    func startNewRound() {
        let newSecretValue = getNewSecretValue()
        currentRound = GameRound(currentSecretValue: newSecretValue)
        rounds.append(currentRound)
    }
    
    private func getNewSecretValue() -> Int {
        return secretValueGenerator.getRandomValue()
    }
    
    
}
