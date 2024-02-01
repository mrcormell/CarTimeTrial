//
//  Car.swift
//  CarTimeTrial
//
//  Created by Cormell, David - DPC on 01/02/2024.
//

import Foundation

struct Car {
    let make: String
    let model: String
    let topSpeed: Int
    let acceleration: Double
    let handling: Int
    
    func displayStats() -> String {
        return """
            Make: \(make)
            Model: \(model)
            Top Speed: \(topSpeed)mph
            Acceleration (0-60 in): \(acceleration)s
            Handling: \(handling)
            """
    }
}
