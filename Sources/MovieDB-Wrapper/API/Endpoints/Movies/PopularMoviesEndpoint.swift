//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum PopularMoviesEndpoint: Endpoint
{
    case popularMovies(language:String?,
                       pageNumber: Int?,
                       region: String?)
}

extension PopularMoviesEndpoint
{
    public var path: String {
        switch self {
        case .popularMovies(let language,
                            let pageNumber,
                            let region):
            let queryDict: [String: Any?] = [
                "language": language ?? nil,
                "page": pageNumber ?? nil,
                "region": region ?? nil]
            let queries = queryDict.makeQuery()
            
            return "movie/popular/?\(queries)"
        }
    }
}
