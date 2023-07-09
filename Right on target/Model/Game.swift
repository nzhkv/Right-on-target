//
//  Game.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 09.07.2023.
//

import Foundation

protocol GameProtocol {
    var score: Int { get }
    var currentSecretValue: Int { get }
    var isGameEnded: Bool { get }
    
    func restartGame()
    func startNewRound()
    func calculateScore(with value: Int)
}

class Game: GameProtocol {
    var score: Int = 0
    private var minSecretValue: Int
    private var maxSecretValue: Int
    var currentSecretValue: Int = 0
    private var lastRound: Int
    private var currentRound: Int = 1
    var isGameEnded: Bool {
        if currentRound >= lastRound {
            true
        } else {
            false
        }
    }
    
    func restartGame() {
        <#code#>
    }
    
    func startNewRound() {
        <#code#>
    }
    
    func calculateScore(with value: Int) {
        <#code#>
    }
    
    
}
