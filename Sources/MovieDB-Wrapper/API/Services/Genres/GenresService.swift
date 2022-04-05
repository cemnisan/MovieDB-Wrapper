//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public final class GenresService: HTTPClient, GenresServiceable
{
    public init() { }
}

extension GenresService
{
    public func getMovieGenres(language: String?) async -> Result<GenresResult>
    {
        return await execute(
            endpoint: MovieGenresEndpoint.getMovieGenres(language: language),
            responseModel: GenresResult.self)
    }
}
