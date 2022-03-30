//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum MovieReviewsEndpoint: Endpoint
{
    case movieReviews(id: Int, pageNumber: Int)
}

extension MovieReviewsEndpoint
{
    public var path: String {
        switch self {
        case .movieReviews(let id, let pageNumber):
            return "movie/\(id)?page=\(pageNumber)"
        }
    }
}
