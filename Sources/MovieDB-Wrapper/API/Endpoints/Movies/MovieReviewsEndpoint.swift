//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum MovieReviewsEndpoint: Endpoint
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
            let queryDict = [
                language,
                pageNumber
            ].makeDictionary(key: K.SimilarQueryKey.twoKeys)
            let queries = queryDict.compactMapValues { $0 }.queryFromDictionary()
            
            return String(format: K.MoviesPath.reviews, id) + "?\(queries)"
        }
    }
}
