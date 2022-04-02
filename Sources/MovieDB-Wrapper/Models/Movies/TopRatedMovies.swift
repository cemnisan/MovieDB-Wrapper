//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public struct TopRatedMoviesResult: Codable
{
    public let page: Int
    public let results: [Movies]
    public let totalPages, totalResults: Int
}

extension TopRatedMoviesResult
{
    enum CodingKeys: String, CodingKey
    {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

