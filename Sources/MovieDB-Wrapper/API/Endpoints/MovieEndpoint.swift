//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public enum MovieEndpoint {
    case populerMovies
    case movieDetail(id: Int)
}

extension MovieEndpoint: Endpoint
{
    public var path: String {
        switch self {
        case .populerMovies:
            return "movie/popular/"
        case .movieDetail(let id):
            return "/movie/\(id)"
        }
    }
}
