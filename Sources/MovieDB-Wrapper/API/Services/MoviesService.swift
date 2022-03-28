//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public protocol MoviesServiceable {
    func getPopularMovies() async -> Result<PopulerMovies, RequestError>
}

@available(macOS 12.0, *)
public final class MovieService: HTTPClient, MoviesServiceable {
    public func getPopularMovies() async -> Result<PopulerMovies, RequestError> {
        return await execute(endpoint: MoviesEndpoint.populerMovies, responseModel: PopulerMovies.self)
    }
}
