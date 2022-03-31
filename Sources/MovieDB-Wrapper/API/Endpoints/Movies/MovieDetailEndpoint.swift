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
            let queryDict: [String: Any?] = [
                "language": language ?? nil,
                "append_to_response": appendToResponse ?? nil]
            let queries = queryDict.makeQuery()
            
            return "movie/\(id)?\(queries)"
        }
    }
}
