//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum MovieDetailsEndpoint: Endpoint
{
    case movieDetail(id: Int,
                     language: String?,
                     appendToResponse: String?)
}

extension MovieDetailsEndpoint
{
    public var path: String {
        switch self {
        case .movieDetail(let id,
                          let language,
                          let appendToResponse):
            let queryDict = [
                language,
                appendToResponse
            ].makeDictionary(key: K.MoviesQueryKey.detail)
            let queries = queryDict.compactMapValues { $0 }.queryFromDictionary()
            
            return (String(format: K.MoviesPath.details, id) + "?\(queries)")
        }
    }
}
