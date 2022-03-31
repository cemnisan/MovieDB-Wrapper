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
            
            let queryValue: [Any?] = [language, sluggedQuery, pageNumber, includeAdult, region, year, primaryReleaseYear]
            let queryDictionary:[String: Any?] = queryValue.makeDictionary(key: K.SearchQueryKey.searchMovie)
            let queries = queryDictionary.compactMapValues { $0 }.queryFromDictionary()
           
            return "search/movie?\(queries)"
        }
    }
}
