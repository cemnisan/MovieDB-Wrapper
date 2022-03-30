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
    public func getPopularMovies(pageNumber: Int) async -> Result<PopularMovies, RequestError>
    {
        return await execute(endpoint: PopularMoviesEndpoint.popularMovies(pageNumber: pageNumber),
                             responseModel: PopularMovies.self)
    }
    
    public func getMovieDetails(id: Int) async -> Result<MovieDetail, RequestError>
    {
        return await execute(endpoint: MovieDetailsEndpoint.movieDetail(id: id),
                             responseModel: MovieDetail.self)
    }
    
    public func getMovieReviews(id: Int,
                                pageNumber: Int) async -> Result<MovieReviews, RequestError>
    {
        return await execute(endpoint: MovieReviewsEndpoint.movieReviews(id: id, pageNumber: pageNumber),
                             responseModel: MovieReviews.self)
    }
    
    public func getSimilarMovies(id: Int,
                                 pageNumber: Int) async -> Result<SimilarMovies, RequestError>
    {
        return await execute(endpoint: SimilarMoviesEndpoint.similarMovies(id: id, pageNumber: pageNumber),
                             responseModel: SimilarMovies.self)
    }
    
    public func getUpComingMovies(pageNumber: Int) async -> Result<UpComingMovies, RequestError>
    {
        return await execute(endpoint: UpcomingMoviesEndpoint.upcomingMovies(pageNumber: pageNumber),
                             responseModel: UpComingMovies.self)
    }
}
