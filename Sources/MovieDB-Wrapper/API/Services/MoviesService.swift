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
    public func getPopularMovies() async -> Result<PopulerMovies, RequestError>
    {
        return await execute(endpoint: MovieEndpoint.populerMovies, responseModel: PopulerMovies.self)
    }
    
    public func getMovieDetails(id: Int) async -> Result<MovieDetail, RequestError>
    {
        return await execute(endpoint: MovieEndpoint.movieDetail(id: id), responseModel: MovieDetail.self)
    }
}
