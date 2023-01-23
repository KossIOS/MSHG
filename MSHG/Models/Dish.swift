//
//  Dish.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 22/02/2022.
//

import Foundation


struct Dish: Decodable {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
        
    }
}
