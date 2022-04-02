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
        region: String?) async -> Result<PopularMovies, RequestError>
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
        appendToResponse: String?) async -> Result<MovieDetail, RequestError>
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
        pageNumber: Int?) async -> Result<MovieReviews, RequestError>
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
        pageNumber: Int?) async -> Result<SimilarMovies, RequestError>
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
        region: String?) async -> Result<UpComingMovies, RequestError>
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
        region: String?) async -> Result<TopRatedMoviesResult, RequestError>
    {
        return await execute(
            endpoint: TopRatedMoviesEndpoint.getTopRated(
                language: language,
                pageNumber: pageNumber,
                region: region),
            responseModel: TopRatedMoviesResult.self)
    }
    
    public func getMoviePosterImage(imagePath: String) async throws -> UIImage
    {
        return try await execute(
            endpoint: MovieImageEndpoint.getImage(image: .posterPath(path: imagePath)))
    }
    
    public func getMovieBackdropImage(imagePath: String) async throws -> UIImage
    {
        return try await execute(
            endpoint: MovieImageEndpoint.getImage(image: .backdropPath(path: imagePath)))
    }
}
