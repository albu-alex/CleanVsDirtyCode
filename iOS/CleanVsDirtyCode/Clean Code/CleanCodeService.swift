//
//  CleanCodeService.swift
//  CleanVsDirtyCode
//
//  Created by Alex Albu on 09.04.2023.
//

import Foundation

class CleanCodeService {
    init() {
        
    }
    
    func getTimeForTotalArea() -> ContinuousClock.Instant.Duration {
        let clock = ContinuousClock()
        let result = clock.measure {
            var total: Double = 0
            for shape in generatedShapes() {
                total += shape.area()
            }
        }
        print("\(result) for clean code implementation")
        return result
    }
    
    private func generatedShapes() -> [Shape] {
        var shapes: [Shape] = []
        
        for i in 1...100000 {
            let shape: Shape
            
            switch i % 4 {
            case 0:
                let side = Double.random(in: 1...100)
                shape = Square(side: side)
            case 1:
                let radius = Double.random(in: 1...100)
                shape = Circle(radius: radius)
            case 2:
                let base = Double.random(in: 1...100)
                let height = Double.random(in: 1...100)
                shape = Triangle(height: height, base: base)
            case 3:
                let width = Double.random(in: 1...100)
                let height = Double.random(in: 1...100)
                shape = Rectangle(width: width, height: height)
            default:
                fatalError("Invalid random number generated")
            }
            
            shapes.append(shape)
        }
        
        return shapes
    }

}
