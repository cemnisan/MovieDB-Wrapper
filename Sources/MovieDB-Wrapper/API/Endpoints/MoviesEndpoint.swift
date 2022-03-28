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

extension MoviesEndpoint: Endpoint
{
    public var path: String {
        switch self {
        case .populerMovies:
            return "movie/popular/"
        }
    }
}
