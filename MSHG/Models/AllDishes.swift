//
//  AllDishes.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 11/04/2022.
//

import Foundation

struct AllDishes: Decodable {
    
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
