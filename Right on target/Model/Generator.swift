//
//  Generator.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 09.07.2023.
//

import Foundation

protocol GeneratorPritocol {
    func getRandomValue() -> Int
}

class NumberGenerator: GeneratorPritocol {
    private let startRangeValue: Int
    private let endRangeValue: Int
    
    init(startRangeValue: Int, endRangeValue: Int) {
        self.startRangeValue = startRangeValue
        self.endRangeValue = endRangeValue
    }
    
    func getRandomValue() -> Int {
        (startRangeValue...endRangeValue).randomElement()!
    }
}
