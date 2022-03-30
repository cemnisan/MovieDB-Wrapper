//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum UpcomingMoviesEndpoint: Endpoint
{
    case upcomingMovies(pageNumber: Int)
}

extension UpcomingMoviesEndpoint
{
    public var path: String {
        switch self {
        case .upcomingMovies(let pageNumber):
           return "movie/upcoming/?page=\(pageNumber)"
        }
    }
}
