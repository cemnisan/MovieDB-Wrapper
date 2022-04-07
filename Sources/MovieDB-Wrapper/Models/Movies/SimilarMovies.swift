//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public struct SimilarMovies: Codable
{
    public let page: Int?
    public let results: [Movies]?
    public let totalPages, totalResults: Int?
}

extension SimilarMovies
{
    public enum CodingKeys: String, CodingKey
    {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
