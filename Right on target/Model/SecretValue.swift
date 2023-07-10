//
//  SecretValue.swift
//  Right on target
//
//  Created by Nikolay Zhukov on 10.07.2023.
//

import Foundation

typealias SecretNumericValue = SecretValue<Int>
typealias SecretColorValue = SecretValue<Color>

protocol SecretValueProtocol {
    associatedtype ValueType
    
    var value: ValueType { get }
    
    mutating func setRandomValue()
}

struct SecretValue<T: Equatable>: SecretValueProtocol {
    typealias ValueType = T
    var value: T
    
    private let randomValueClosure: (T) -> T
    init(initValue: T, randomValueClosure: @escaping (T) -> T) {
        value = initValue
        self.randomValueClosure = randomValueClosure
    }
    
    mutating func setRandomValue() {
        self.value = randomValueClosure(self.value)
    }
    
    
}
