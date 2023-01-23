//
//  Apiresponse.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 03/04/2022.
//

import Foundation

struct ApiResponse<T: Decodable>: Decodable {
    let status: Int
    let message: String?
    let data: T?
    let error: String?
    
}
