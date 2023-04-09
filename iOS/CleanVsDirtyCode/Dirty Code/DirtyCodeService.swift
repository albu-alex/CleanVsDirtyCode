//
//  DirtyCodeService.swift
//  CleanVsDirtyCode
//
//  Created by Alex Albu on 09.04.2023.
//

import Foundation

enum ShapeType: Int {
    case square = 0
    case rectangle
    case triangle
    case circle
}

struct ShapeUnion {
    let `type`: ShapeType
    let height: Double
    let width: Double
}


class DirtyCodeService {
    private let CTable: [Double] = [1.0, 1.0, 0.5, .pi]
    
    init() {
        
    }
    
    func getTimeForTotalArea() -> ContinuousClock.Instant.Duration {
        let clock = ContinuousClock()
        let result = clock.measure {
            var total: Double = 0
            for shapeUnion in generatedShapeUnions() {
                total += getAreaUnion(shape: shapeUnion)
            }
        }
        print("\(result) for dirty code implementation")
        return result
    }
    
    private func getAreaUnion(shape: ShapeUnion) -> Double {
        return CTable[shape.type.rawValue] * shape.width * shape.height
    }
    
    private func generatedShapeUnions() -> [ShapeUnion] {
        var shapeUnions: [ShapeUnion] = []
        for _ in 1...100000 {
            let type = ShapeType(rawValue: Int.random(in: 0..<4))!
            let height = Double.random(in: 1...10)
            let width = Double.random(in: 1...10)
            let shapeUnion = ShapeUnion(type: type, height: height, width: width)
            shapeUnions.append(shapeUnion)
        }
        return shapeUnions
    }
    
}
