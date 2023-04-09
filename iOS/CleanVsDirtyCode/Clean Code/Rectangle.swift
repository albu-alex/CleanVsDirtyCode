//
//  Square.swift
//  CleanVsDirtyCode
//
//  Created by Alex Albu on 09.04.2023.
//

import Foundation

class Rectangle: Shape {
    private let width: Double
    private let height: Double
    
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    func area() -> Double {
        return width * height
    }
}
