//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

// MARK: - MoviesSearchResult
public struct SearchMoviesResult: Codable
{
    var page: Int
    var results: [Movies]
    var totalPages, totalResults: Int
}

extension SearchMoviesResult
{
    enum CodingKeys: String, CodingKey
    {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
