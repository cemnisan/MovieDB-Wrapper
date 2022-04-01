//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum SimilarMoviesEndpoint: Endpoint
{
    case similarMovies(id: Int,
                       language: String?,
                       pageNumber: Int?)
}

extension SimilarMoviesEndpoint
{
    public var path: String {
        switch self {
        case .similarMovies(let id,
                            let language,
                            let pageNumber):
            let queryDict = [
                language,
                pageNumber
            ].makeDictionary(key: K.SimilarQueryKey.twoKeys)
            let queries = queryDict.makeURLQuery()
            
            return String(format: K.MoviesPath.similar, id) + "?\(queries)"
        }
    }
}
