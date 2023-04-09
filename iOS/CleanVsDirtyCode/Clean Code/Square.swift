//
//  Square.swift
//  CleanVsDirtyCode
//
//  Created by Alex Albu on 09.04.2023.
//

import Foundation

class Square: Shape {
    private let side: Double
    
    init(side: Double) {
        self.side = side
    }
    
    func area() -> Double {
        return side * side
    }
}
