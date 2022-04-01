//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

enum MovieGenresEndpoint: Endpoint
{
    case getMovieGenres(language: String?)
}

extension MovieGenresEndpoint
{
    public var path: String {
        switch self {
        case .getMovieGenres(let language):
            let queryDict = [language].makeDictionary(key: ["language"])
            let queries = queryDict.compactMapValues { $0 }.queryFromDictionary()
            
            return "\(K.GenresPath.movies)?\(queries)"
        }
    }
}
