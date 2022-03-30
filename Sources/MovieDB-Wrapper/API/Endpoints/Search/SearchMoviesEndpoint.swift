//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum SearchMoviesEndpoint: Endpoint
{
    case searchMovies(language: String,
                      query: String,
                      pageNumber: Int,
                      includeAdult: Bool)
}

extension SearchMoviesEndpoint
{
    public var path: String {
        switch self {
        case .searchMovies(let language,
                           let query,
                           let pageNumber,
                           let includeAdult):
            let sluggedQuery = query.addPlusToMiddleSpaces()()
            return "search/movie?language=\(language)&query=\(sluggedQuery)&page=\(pageNumber)&include_adult=\(includeAdult)"
        }
    }
}
