//
//  ContentView.swift
//  CarTimeTrial
//
//  Created by Cormell, David - DPC on 01/02/2024.
//

import SwiftUI

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

struct ContentView: View {
    let car = Car(make: "Mazda", model: "MX-5", topSpeed: 125, acceleration: 7.7, handling: 5)
    
    var body: some View {
        Text(car.displayStats())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
