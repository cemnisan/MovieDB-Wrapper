//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum MovieReviewsEndpoint: Endpoint
{
    case movieReviews(id: Int,
                      language: String?,
                      pageNumber: Int?)
}

extension MovieReviewsEndpoint
{
    public var path: String {
        switch self {
        case .movieReviews(let id,
                           let language,
                           let pageNumber):
            let queryDict: [String: Any?] = [
                "language": language ?? nil,
                "page": pageNumber ?? nil]
            let queryFromDict = queryDict.compactMapValues { $0 }.queryFromDictionary()
            
            return "movie/\(id)?\(queryFromDict)"
        }
    }
}
