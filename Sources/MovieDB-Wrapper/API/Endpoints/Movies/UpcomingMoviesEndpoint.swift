//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

enum UpcomingMoviesEndpoint: Endpoint
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
            let queryValue: [Any?] = [language, pageNumber, region]
            let queryDict: [String: Any?] = queryValue.makeDictionary(key: K.SimilarQueryKey.threeKeys)
            let queries = queryDict.compactMapValues { $0 }.queryFromDictionary()
            
            return "movie/upcoming/?\(queries)"
        }
    }
}
