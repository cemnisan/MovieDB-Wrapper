//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum PopularMoviesEndpoint: Endpoint
{
    case popularMovies(language:String?,
                       pageNumber: Int?,
                       region: String?)
}

extension PopularMoviesEndpoint
{
    public var path: String {
        switch self {
        case .popularMovies(let language,
                            let pageNumber,
                            let region):
            let queryValue: [Any?] = [language, pageNumber, region]
            let queryDict: [String: Any?] = queryValue.makeDictionary(key: K.SimilarQueryKey.threeKeys)
            let queries = queryDict.compactMapValues { $0 }.queryFromDictionary()
            
            return "movie/popular/?\(queries)"
        }
    }
}
