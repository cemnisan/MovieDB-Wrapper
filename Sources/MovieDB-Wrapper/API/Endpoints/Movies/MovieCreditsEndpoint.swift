//
//  File.swift
//  
//
//  Created by Cem Nisan on 12.04.2022.
//

import Foundation

public enum MovieCreditsEndpoint: Endpoint
{
    case credits(id: Int,
                 language: String)
}

extension MovieCreditsEndpoint
{
    public var path: String {
        switch self {
        case .credits(let id,
                      let language):
            let queryDict = [language].makeDictionary(key: ["language"])
            let query = queryDict.makeURLQuery()
            
            return "movie/\(id)/credits?\(query)"
        }
    }
}
