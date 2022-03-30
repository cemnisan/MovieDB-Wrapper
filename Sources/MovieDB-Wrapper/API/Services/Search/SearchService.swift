//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public final class SearchService
{
    public init() { }
}

extension SearchService: HTTPClient, SearchServiceable
{
    func searchMovies(
        with query: String,
        language: String = "en-US",
        pageNumber: Int = 1,
        includeAdult: Bool = false) async -> Result<SearchMoviesResult, RequestError>
    {
        return await execute(
            endpoint: SearchMoviesEndpoint.searchMovies(language: language,
                                                        query: query,
                                                        pageNumber: pageNumber,
                                                        includeAdult: includeAdult),
            responseModel: SearchMoviesResult.self)
    }
}
