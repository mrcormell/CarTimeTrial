//
//  ContentView.swift
//  CarTimeTrial
//
//  Created by Cormell, David - DPC on 01/02/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedCar: Int = 0
    @State private var driverName: String = ""
    @State private var fuelLevel: Double = 50
    @State private var courseName: String = "Matterhorn"
    
    let cars = [Car(make: "Mazda", model: "MX-5", topSpeed: 125, acceleration: 7.7, handling: 5), Car(make: "Volkswagen", model: "Golf", topSpeed: 110, acceleration: 7.0, handling: 7)]
    
    var body: some View {
        Form {
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
            Section {
                TextField("Driver", text: $driverName)
                Picker("Course", selection: $courseName, content: {
                    Text("Matterhorn")
                    Text("Silverstone")
                    Text("Monacco")
                })
                Slider(value: $fuelLevel, in: 0...100, label: { Text("Fuel Level") }, minimumValueLabel: { Text("Empty") }, maximumValueLabel: { Text("Full") })
                Button("Race") {
                    print("beginning the race")
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
