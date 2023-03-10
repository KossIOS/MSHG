//
//  AppError.swift
//  MSHG
//
//  Created by Konstantyn Koroban on 03/04/2022.
//

import Foundation
enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
            
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "A have no idea what go on"
        case .invalidUrl:
            return "Give me a valid URl "
        case .serverError(let error) :
            return  error
        }
    }
}
