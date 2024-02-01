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
    @State private var selectedCar: Int = 0
    
    let cars = [Car(make: "Mazda", model: "MX-5", topSpeed: 125, acceleration: 7.7, handling: 5), Car(make: "Volkswagen", model: "Golf", topSpeed: 110, acceleration: 7.0, handling: 7)]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(cars[selectedCar].displayStats())
            Button("Next Car", action: {
                if selectedCar + 1 >= cars.count {
                    selectedCar = 0
                } else {
                    selectedCar += 1
                }
                
            })
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
