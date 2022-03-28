//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

enum MoviesEndpoint {
    case populerMovies
}

extension MoviesEndpoint: Endpoint {
    var path: String {
        switch self {
        case .populerMovies:
            return "movie/popular"
        }
    }
    
    var method: HTTPMethod {
        switch self {
        case .populerMovies:
            return .get
        }
    }
    
    var header: [String : String]? {
        let accessToken = "8b658eaa6b7ec25d913423d4afefe317"
        
        switch self {
        case .populerMovies:
            return [
                "Authorization": "Bearer \(accessToken)",
                "Content-Type": "application/json;charset=utf-8"
            ]
        }
    }
    
    var body: [String : String]? {
        switch self {
        case .populerMovies:
            return nil
        }
    }
}
