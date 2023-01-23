//
//  Route.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 27/03/2022.
//

import Foundation

enum Route {
    static let baseUrl = "https://mshg.pl"
    
    case fetchAllCategories
    
    var description: String {
        switch self {
        case .fetchAllCategories: return "/dish-categories"
            
        }
    }
}
