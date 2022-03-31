//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum SearchMoviesEndpoint: Endpoint
{
    case searchMovies(language: String?,
                      query: String,
                      pageNumber: Int?,
                      includeAdult: Bool?,
                      region: String?,
                      year: Int?,
                      primaryReleaseYear: Int?)
}

extension SearchMoviesEndpoint
{
    public var path: String {
        switch self {
        case .searchMovies(let language,
                           let query,
                           let pageNumber,
                           let includeAdult,
                           let region,
                           let year,
                           let primaryReleaseYear):
            let sluggedQuery = query.addPlusToMiddleSpaces()
            let params:[String: Any?] = [
                "language": language ?? nil,
                "query": sluggedQuery,
                "page": pageNumber ?? nil,
                "include_adult": includeAdult ?? nil,
                "region": region ?? nil,
                "year": year ?? nil,
                "primary_release_yeaer": primaryReleaseYear!
            ]
            let stringFromParams = params.compactMapValues { $0 }.stringFromHttpParameters()
            
            return "search/movie?\(stringFromParams)"
        }
    }
}
