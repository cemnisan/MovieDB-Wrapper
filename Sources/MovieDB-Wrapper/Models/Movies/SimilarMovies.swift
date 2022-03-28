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
    public let results: [SimilarMoviesResult]?
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

public struct SimilarMoviesResult: Codable
{
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let title, originalLanguage, originalTitle, overview: String?
    let popularity: Double?
    let posterPath, releaseDate: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
}

extension SimilarMoviesResult
{
    public enum CodingKeys: String, CodingKey
    {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id, title
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}
