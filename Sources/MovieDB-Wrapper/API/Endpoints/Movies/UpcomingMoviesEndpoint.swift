//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public enum UpcomingMoviesEndpoint: Endpoint
{
    case upcomingMovies(language: String?,
                        pageNumber: Int?,
                        region: String?)
}

extension UpcomingMoviesEndpoint
{
    public var path: String {
        switch self {
        case .upcomingMovies(let language,
                             let pageNumber,
                             let region):
            let queryDict = [
                language,
                pageNumber,
                region
            ].makeDictionary(key: K.SimilarQueryKey.threeKeys)
            let queries = queryDict.compactMapValues { $0 }.queryFromDictionary()
            
            return "\(K.MoviesPath.upcoming)?\(queries)"
        }
    }
}
