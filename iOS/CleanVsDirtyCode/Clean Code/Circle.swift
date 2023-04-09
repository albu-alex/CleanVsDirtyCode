//
//  Circle.swift
//  CleanVsDirtyCode
//
//  Created by Alex Albu on 09.04.2023.
//

import Foundation

class Circle: Shape {
    private let radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func area() -> Double {
        return .pi * radius * radius
    }
}
