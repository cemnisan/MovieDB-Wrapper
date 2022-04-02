//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public enum TopRatedMoviesEndpoint: Endpoint
{
    case getTopRated(language: String?,
                     pageNumber: Int?,
                     region: String?)
}

extension TopRatedMoviesEndpoint
{
    public var path: String {
        switch self {
        case .getTopRated(let language,
                          let pageNumber,
                          let region):
            let queryDict = [
                language,
                pageNumber,
                region
            ].makeDictionary(key: K.SimilarQueryKey.threeKeys)
            let queries = queryDict.makeURLQuery()
            
            return "\(K.MoviesPath.topRated)?\(queries)"
        }
    }
}
