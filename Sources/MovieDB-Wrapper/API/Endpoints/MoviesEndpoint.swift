//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public enum MoviesEndpoint {
    case populerMovies
}

extension MoviesEndpoint: Endpoint {
    public var path: String {
        switch self {
        case .populerMovies:
            return "movie/popular/"
        }
    }
    
    public var method: HTTPMethod {
        switch self {
        case .populerMovies:
            return .get
        }
    }
    
    public var header: [String : String]? {
        let accessToken = "8b658eaa6b7ec25d913423d4afefe317"
        
        switch self {
        case .populerMovies:
            return [
                "Authorization": "Bearer \(accessToken)",
                "Content-Type": "application/json;charset=utf-8"
            ]
        }
    }
    
    public var body: [String : String]? {
        switch self {
        case .populerMovies:
            return nil
        }
    }
}
