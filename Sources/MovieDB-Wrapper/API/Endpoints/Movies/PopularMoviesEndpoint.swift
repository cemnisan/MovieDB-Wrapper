//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum PopularMoviesEndpoint: Endpoint
{
    case popularMovies(pageNumber: Int)
}

extension PopularMoviesEndpoint
{
    public var path: String {
        switch self {
        case .popularMovies(let pageNumber):
            let params = "page=\(pageNumber)"
            
            return "movie/popular/?\(params)"
        }
    }
}
