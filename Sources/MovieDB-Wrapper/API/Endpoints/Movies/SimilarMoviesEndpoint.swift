//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum SimilarMoviesEndpoint: Endpoint
{
    case similarMovies(id: Int,
                       language: String?,
                       pageNumber: Int?)
}

extension SimilarMoviesEndpoint
{
    public var path: String {
        switch self {
        case .similarMovies(let id,
                            let language,
                            let pageNumber):
            let queryDict: [String: Any?] = [
                "language": language ?? nil,
                "page": pageNumber ?? nil]
            let queries = queryDict.makeQuery()
            
            return "movie/\(id)/similar?\(queries)"
        }
    }
}
