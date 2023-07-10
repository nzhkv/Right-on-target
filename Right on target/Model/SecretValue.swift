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
}
