//
//  Meal.swift
//  FoodTracker
//
//  Created by Justin Dang on 4/29/19.
//

import UIKit

class Meal {
    // MARK: properties
    var name: String
    var photo: UIImage?
    var rating: Int
    // MARK: initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        // rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        // initialize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
