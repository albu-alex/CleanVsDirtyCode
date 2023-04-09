//
//  Triangle.swift
//  CleanVsDirtyCode
//
//  Created by Alex Albu on 09.04.2023.
//

import Foundation

class Triangle: Shape {
    private let height: Double
    private let base: Double
    
    init(height: Double, base: Double) {
        self.height = height
        self.base = base
    }
    
    func area() -> Double {
        return 0.5 * height * base
    }
}
