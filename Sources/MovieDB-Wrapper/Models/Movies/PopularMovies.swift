//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public struct PopularMovies: Codable
{
    public let page: Int
    public let results: [Movie]
    public let totalPages: Int
    public let totalResults: Int
}

extension PopularMovies
{
    public  enum CodingKeys: String, CodingKey
    {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
