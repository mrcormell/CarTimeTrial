//
//  CarTimeTrialTests.swift
//  CarTimeTrialTests
//
//  Created by Cormell, David - DPC on 01/02/2024.
//

import XCTest
@testable import CarTimeTrial

final class CarTimeTrialTests: XCTestCase {

    func testCarGetStatsAsPerPropertyValues() {
        //arrange
        let car = Car(make: "Mazda", model: "MX-5", topSpeed: 125, acceleration: 7.7, handling: 5)
        let expected = """
        Make: Mazda
        Model: MX-5
        Top Speed: 125mph
        Acceleration (0-60 in): 7.7s
        Handling: 5
        """
        //arrange
        let actual = car.displayStats()
        //assert
        XCTAssertEqual(actual, expected)
    }


}
