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
    public func searchMovies(
        query: String,
        language: String?,
        pageNumber: Int?,
        includeAdult: Bool?,
        region: String?,
        year: Int?,
        primaryReleaseYear: Int?) async -> Result<SearchMoviesResult, RequestError>
    {
        return await execute(
            endpoint: SearchMoviesEndpoint.searchMovies(
                language: language,
                query: query,
                pageNumber: pageNumber,
                includeAdult: includeAdult,
                region: region,
                year: year,
                primaryReleaseYear: primaryReleaseYear),
            responseModel: SearchMoviesResult.self)
    }
}
