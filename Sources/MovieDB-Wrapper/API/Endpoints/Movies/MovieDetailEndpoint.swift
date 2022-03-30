//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum MovieDetailsEndpoint: Endpoint
{
    case movieDetail(id: Int)
}

extension MovieDetailsEndpoint
{
    public var path: String {
        switch self {
        case .movieDetail(let id):
            return "movie/\(id)"
        }
    }
}
