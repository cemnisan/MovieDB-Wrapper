//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public enum RequestError: Error
{
    case decode
    case invalidURL
    case noResponse
    case unauthorized
    case unexpectedStatusCode
    case unknown
    
    var customMessage: String {
        switch self {
        case .decode:
            return "Decode error"
        case .unauthorized:
            return "Session expired"
        default:
            return "Unknown error"
        }
    }
}
