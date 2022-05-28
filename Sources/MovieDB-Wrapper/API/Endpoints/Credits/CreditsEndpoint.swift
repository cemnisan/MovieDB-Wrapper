//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.05.2022.
//

import Foundation

enum CreditsEndpoint: Endpoint {
    case getCreditDetails(creditID: String)
}

extension CreditsEndpoint {
    
    var path: String {
        switch self {
        case .getCreditDetails(let creditID):
            return K.baseURL + String(format: K.CreditsPath.details, creditID)
        }
    }
}
