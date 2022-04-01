//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

struct K
{
    struct MoviesPath
    {
        static let details  = "movie/%d"
        static let reviews  = "movie/%d/reviews"
        static let popular  = "movie/popular"
        static let similar  = "movie/%d/similar"
        static let upcoming = "movie/upcoming"
    }
    
    struct SearchPath
    {
        static let movies = "search/movie"
    }
    
    struct MoviesQueryKey
    {
        static let detail = [
            "language",
            "append_to_response"
        ]
    }
        
    struct SearchQueryKey
    {
        static let searchMovie = [
            "language",
            "query",
            "page",
            "include_adult",
            "region",
            "year",
            "primary_release_year",
        ]
    }
    
    struct SimilarQueryKey
    {
        static let twoKeys   = [
            "language",
            "page"
        ]
        static let threeKeys = [
            "language",
            "page",
            "region"
        ]
    }
}
