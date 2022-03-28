//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public enum MovieEndpoint {
    case populerMovies(page: Int)
    case movieDetail(id: Int)
    case movieReviews(id: Int, page: Int)
    case similarMovies(id: Int, page: Int)
    case upcomingMovies(page: Int)
}

extension MovieEndpoint: Endpoint
{
    public var path: String {
        switch self {
        case .populerMovies(let page):
            return "movie/popular/?page=\(page)"
        case .movieDetail(let id):
            return "/movie/\(id)"
        case .movieReviews(let id, let page):
            return "/movie/\(id)&page=\(page)"
        case .similarMovies(let id, let page):
            return "/movie/\(id)/similar?page=\(page)"
        case .upcomingMovies(let page):
            return "/movie/upcoming/?page=\(page)"
        }
    }
}
