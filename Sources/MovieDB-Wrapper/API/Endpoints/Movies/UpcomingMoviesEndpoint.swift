//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum UpcomingMoviesEndpoint: Endpoint
{
    case upcomingMovies(language: String?,
                        pageNumber: Int?,
                        region: String?)
}

extension UpcomingMoviesEndpoint
{
    public var path: String {
        switch self {
        case .upcomingMovies(let language,
                             let pageNumber,
                             let region):
            let queryDict: [String: Any?] = [
                "language": language ?? nil,
                "page": pageNumber ?? nil,
                "region": region ?? nil]
            let queries = queryDict.makeQuery()
            
            return "movie/upcoming/?\(queries)"
        }
    }
}
