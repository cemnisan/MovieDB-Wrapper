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
    /// Search Movies from `https://api.themoviedb.org/3/search/movie?{...queries}`
    /// - Parameters:
    ///   - query: `Required` Search for movies using query.
    ///   - language: `Optional` Filter by language.
    ///     - Required: Pass a ISO 639-1 value to display translated data for the fields that support it.
    ///     - Min Length: 2
    ///     - Pattern: ([a-z]{2})-([A-Z]{2})
    ///     - Default: en-US
    ///   - pageNumber: `Optional` Specify which page to query.
    ///     - Minimum: 1
    ///     - Maximum: 1000
    ///     - Default: 1
    ///   - includeAdult: `Optional` Choose whether to inlcude adult (pornography) content in the results.
    ///     - Default: False
    ///   - region: `Optional` Filter release dates. Must be uppercase.
    ///     - Pattern: ^[A-Z]{2}$
    ///   - year: `Optional` Filter by year
    ///   - primaryReleaseYear: `Optional` Filter by Primary Release Year
    /// - Returns: If the request is successfull return `SearchMoviesResult` if not return `RequestError`
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
