//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

struct K
{
    static let baseURL      = "https://api.themoviedb.org/3/"
    static let baseImageURL = "https://image.tmdb.org/t/p/w500/"
    
    struct MoviesPath
    {
        static let details  = "movie/%d"
        static let reviews  = "movie/%d/reviews"
        static let popular  = "movie/popular"
        static let similar  = "movie/%d/similar"
        static let upcoming = "movie/upcoming"
        static let topRated = "movie/top_rated"
    }
    
    struct CreditsPath {
        static let details = "/credit/%@"
    }
    
    struct SearchPath
    {
        static let movies = "search/movie"
    }
    
    struct GenresPath
    {
        static let movies = "genre/movie/list"
    }
    
    struct DiscoverPath
    {
        static let movies = "discover/movie"
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
    
    struct DiscoverQueryKey
    {
        static let discoverMovies = [
            "language",
            "region",
            "sort_by",
            "certification_country",
            "certification",
            "certification.lte",
            "certification.gte",
            "include_adult",
            "include_video",
            "page",
            "primary_release_year",
            "primary_release_date.gte",
            "primary_release_date.lte",
            "release_date.gte",
            "release_date.lte",
            "with_release_type",
            "year",
            "vote_count.gte",
            "vote_count.lte",
            "vote_average.gte",
            "vote_average.lte",
            "with_cast",
            "with_crew",
            "with_people",
            "with_companies",
            "with_genres",
            "without_genres",
            "with_keywords",
            "without_keywords",
            "with_runtime.gte",
            "with_runtime.lte",
            "with_original_language",
            "with_watch_providers",
            "watch_region",
            "with_watch_monetization_types",
            "without_companies"
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
