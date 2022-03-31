//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

struct K
{
    struct SearchQueryKey {
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
    
    struct MoviesQueryKey {
        static let detail = ["language", "append_to_response"]
    }
    
    struct SimilarQueryKey {
        static let twoKeys   = ["language", "page"]
        static let threeKeys = ["language", "page", "region"]
    }
}
