//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public struct UpComingMovies: Codable
{
    public let dates: Dates?
    public let page: Int?
    public let results: [UpComingMoviesResult]?
    public let totalPages, totalResults: Int?
}

extension UpComingMovies
{
    public enum CodingKeys: String, CodingKey
    {
        case dates, page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

public struct UpComingMoviesResult: Codable
{
    let adult: Bool?
    let backdropPath: String?
    let genreIDS: [Int]?
    let id: Int?
    let originalTitle, overview: String?
    let popularity: Double?
    let posterPath, releaseDate, title: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
}

extension UpComingMoviesResult
{
    enum CodingKeys: String, CodingKey
    {
        case adult
        case backdropPath = "backdrop_path"
        case genreIDS = "genre_ids"
        case id
        case originalTitle = "original_title"
        case overview, popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title, video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

public struct Dates: Codable
{
    let maximum, minimum: String?
}
