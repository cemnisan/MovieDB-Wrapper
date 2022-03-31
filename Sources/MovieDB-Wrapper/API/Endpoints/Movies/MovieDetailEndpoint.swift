//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum MovieDetailsEndpoint: Endpoint
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
            let queryValue: [Any?] = [language, appendToResponse]
            let queryDictionary: [String: Any?] = queryValue.makeDictionary(key: K.MoviesQueryKey.detail)
            let queries = queryDictionary.compactMapValues { $0 }.queryFromDictionary()
            
            return "movie/\(id)?\(queries)"
        }
    }
}
