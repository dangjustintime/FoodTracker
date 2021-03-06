//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Justin Dang on 3/22/19.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    // MARK: meal class tests
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSuceeds() {
        // zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        // highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // negetive rating
        let negativeRatingMeal = Meal.init(name: "Negetive", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        // rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        // empty string
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
}
