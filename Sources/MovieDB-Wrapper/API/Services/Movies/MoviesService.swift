//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation
import UIKit

public final class MovieService: HTTPClient, MoviesServiceable
{
    public init() { }
}

extension MovieService
{
    public func getPopularMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<PopularMovies>
    {
        return await execute(
            endpoint: PopularMoviesEndpoint.popularMovies(
                language: language,
                pageNumber: pageNumber,
                region: region),
            responseModel: PopularMovies.self)
    }

    public func getMovieDetails(
        id: Int,
        language: String?,
        appendToResponse: String?) async -> Result<MovieDetail>
    {
        return await execute(
            endpoint: MovieDetailsEndpoint.movieDetail(
                id: id,
                language: language,
                appendToResponse: appendToResponse),
            responseModel: MovieDetail.self)
    }

    public func getMovieReviews(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<MovieReviews>
    {
        return await execute(
            endpoint: MovieReviewsEndpoint.movieReviews(
                id: id,
                language: language,
                pageNumber: pageNumber),
            responseModel: MovieReviews.self)
    }

    public func getSimilarMovies(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<SimilarMovies>
    {
        return await execute(
            endpoint: SimilarMoviesEndpoint.similarMovies(
                id: id,
                language: language,
                pageNumber: pageNumber),
            responseModel: SimilarMovies.self)
    }
    
    public func getUpComingMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<UpComingMovies>
    {
        return await execute(
            endpoint: UpcomingMoviesEndpoint.upcomingMovies(
                language: language,
                pageNumber: pageNumber,
                region: region),
            responseModel: UpComingMovies.self)
    }
    
    public func getTopRatedMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<TopRatedMoviesResult>
    {
        return await execute(
            endpoint: TopRatedMoviesEndpoint.getTopRated(
                language: language,
                pageNumber: pageNumber,
                region: region),
            responseModel: TopRatedMoviesResult.self)
    }
}
