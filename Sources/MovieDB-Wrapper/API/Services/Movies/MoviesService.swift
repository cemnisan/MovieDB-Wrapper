//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public final class MovieService: HTTPClient, MoviesServiceable
{
    public init() { }
}

extension MovieService
{
    /// Get Popular Movies from `https://api.themoviedb.org/3/movie/popular?{...queries}`
    /// - Parameters:
    ///   - language: `Optional` Filter by language.
    ///     - Required: Pass a ISO 639-1 value to display translated data for the fields that support it.
    ///     - Min Length: 2
    ///     - Pattern: ([a-z]{2})-([A-Z]{2})
    ///     - Default: en-US
    ///   - pageNumber: `Optional` Specify which page to query.
    ///     - Minimum: 1
    ///     - Maximum: 1000
    ///     - Default: 1
    ///   - region: `Optional` Filter release dates. Must be uppercase.
    ///     - Pattern: ^[A-Z]{2}$
    /// - Returns: If the request is successfull return `PopularMovies` if not return `RequestError`
    public func getPopularMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<PopularMovies, RequestError>
    {
        return await execute(
            endpoint: PopularMoviesEndpoint.popularMovies(
                language: language,
                pageNumber: pageNumber,
                region: region),
            responseModel: PopularMovies.self)
    }
    
    /// Get Movie Details `https://api.themoviedb.org/3/movie/{movie_id}`
    /// - Parameters:
    ///   - id: `Required` Get Movie details by `Movie ID`
    ///   - language: `Optional` Filter by language.
    ///     - Required: Pass a ISO 639-1 value to display translated data for the fields that support it.
    ///     - Min Length: 2
    ///     - Pattern: ([a-z]{2})-([A-Z]{2})
    ///     - Default: en-US
    ///   - appendToResponse: `Optional` Append requests within the same namespace to the response.
    ///     - Pattern: ([\w]+)
    /// - Returns: If the request is successfull return `MovieDetail` if not return `RequestError`
    public func getMovieDetails(
        id: Int,
        language: String?,
        appendToResponse: String?) async -> Result<MovieDetail, RequestError>
    {
        return await execute(
            endpoint: MovieDetailsEndpoint.movieDetail(
                id: id,
                language: language,
                appendToResponse: appendToResponse),
            responseModel: MovieDetail.self)
    }
    
    /// Get Movie's Reviews from `https://api.themoviedb.org/3/movie/{movie_id}/reviews?{...queries}`
    /// - Parameters:
    ///   - id: `Required` Get Movie's Reviews by `Movie ID`
    ///   - language: `Optional` Filter by language.
    ///     - Required: Pass a ISO 639-1 value to display translated data for the fields that support it.
    ///     - Min Length: 2
    ///     - Pattern: ([a-z]{2})-([A-Z]{2})
    ///     - Default: en-US
    ///   - pageNumber: `Optional` Specify which page to query.
    ///     - Minimum: 1
    ///     - Maximum: 1000
    ///     - Default: 1
    /// - Returns: If the request is successfull return `MovieReviews` if not return `RequestError`
    public func getMovieReviews(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<MovieReviews, RequestError>
    {
        return await execute(
            endpoint: MovieReviewsEndpoint.movieReviews(
                id: id,
                language: language,
                pageNumber: pageNumber),
            responseModel: MovieReviews.self)
    }
    
    /// Get Similar Movies from `https://api.themoviedb.org/3/movie/{movie_id}/similar?{...queries}`
    /// - Parameters:
    ///   - id: `Required` Get Similar Movies based on content of given `Movie ID`
    ///   - language: `Optional` Filter by language.
    ///     - Required: Pass a ISO 639-1 value to display translated data for the fields that support it.
    ///     - Min Length: 2
    ///     - Pattern: ([a-z]{2})-([A-Z]{2})
    ///     - Default: en-US
    ///   - pageNumber: `Optional` Specify which page to query.
    ///     - Minimum: 1
    ///     - Maximum: 1000
    ///     - Default: 1
    /// - Returns: If the request is successfull return `SimilarMovies` if not return `RequestError`
    public func getSimilarMovies(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<SimilarMovies, RequestError>
    {
        return await execute(
            endpoint: SimilarMoviesEndpoint.similarMovies(
                id: id,
                language: language,
                pageNumber: pageNumber),
            responseModel: SimilarMovies.self)
    }
    
    /// Get Up Coming Movies from `https://api.themoviedb.org/3/movie/upcoming?{...queries}`
    /// - Parameters:
    ///   - language: `Optional` Filter by language.
    ///     - Required: Pass a ISO 639-1 value to display translated data for the fields that support it.
    ///     - Min Length: 2
    ///     - Pattern: ([a-z]{2})-([A-Z]{2})
    ///     - Default: en-US
    ///   - pageNumber: `Optional` Specify which page to query.
    ///     - Minimum: 1
    ///     - Maximum: 1000
    ///     - Default: 1
    ///   - region: `Optional` Filter release dates. Must be uppercase.
    ///     - Pattern: ^[A-Z]{2}$
    /// - Returns: If the request is successfull return `UpComingMovies` if not return `RequestError`
    public func getUpComingMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<UpComingMovies, RequestError>
    {
        return await execute(
            endpoint: UpcomingMoviesEndpoint.upcomingMovies(
                language: language,
                pageNumber: pageNumber,
                region: region),
            responseModel: UpComingMovies.self)
    }
}
