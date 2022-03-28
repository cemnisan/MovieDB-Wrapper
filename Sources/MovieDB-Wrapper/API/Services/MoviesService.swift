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
    public func getPopularMovies(page: Int) async -> Result<PopularMovies, RequestError>
    {
        return await execute(endpoint: MovieEndpoint.populerMovies(page: page), responseModel: PopularMovies.self)
    }
    
    public func getMovieDetails(id: Int) async -> Result<MovieDetail, RequestError>
    {
        return await execute(endpoint: MovieEndpoint.movieDetail(id: id), responseModel: MovieDetail.self)
    }
    
    public func getMovieReviews(id: Int,
                                page: Int) async -> Result<MovieReviews, RequestError>
    {
        return await execute(endpoint: MovieEndpoint.movieReviews(id: id, page: page), responseModel: MovieReviews.self)
    }
    
    public func getSimilarMovies(id: Int,
                                 page: Int) async -> Result<SimilarMovies, RequestError>
    {
        return await execute(endpoint: MovieEndpoint.similarMovies(id: id, page: page), responseModel: SimilarMovies.self)
    }
    
    public func getUpComingMovies(page: Int) async -> Result<UpComingMovies, RequestError>
    {
        return await execute(endpoint: MovieEndpoint.upcomingMovies(page: page), responseModel: UpComingMovies.self)
    }
}
