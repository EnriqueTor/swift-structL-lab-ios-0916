//
//  PizzaDeliveryService.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct PizzaDeliveryService {
    
    var location: Coordinate
    var pizzasAvailable: Int
    
    init(location: Coordinate) {
        self.location = location
        pizzasAvailable = 10
    }
    
    func isInRange(to: Coordinate) -> Bool {
        return to.distance(to: self.location) <= 5000
    }
    
    mutating func deliverPizza(to: Coordinate) -> Bool {
        if isInRange(to: to) && pizzasAvailable >= 1 {
            pizzasAvailable -= 1
            return true
        }
        return false
    }
}

