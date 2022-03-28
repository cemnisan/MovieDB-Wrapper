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
        let accessToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YjY1OGVhYTZiN2VjMjVkOTEzNDIzZDRhZmVmZTMxNyIsInN1YiI6IjVmOTk0YTRkMTc3OTJjMDAzNjNmNTBkNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.OvEG-cket_cjHmRgRbYIYZA5GbG__Dl2KWhbTmIRrIE"
        
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
