//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum SimilarMoviesEndpoint: Endpoint
{
    case similarMovies(id: Int, pageNumber: Int)
}

extension SimilarMoviesEndpoint
{
    public var path: String {
        switch self {
        case .similarMovies(let id,
                            let pageNumber):
            let params = "page=\(pageNumber)"
            
            return "movie/\(id)/similar?\(params)"
        }
    }
}
