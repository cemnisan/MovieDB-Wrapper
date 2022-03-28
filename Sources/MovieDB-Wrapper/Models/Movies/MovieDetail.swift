//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public struct MovieDetail: Codable
{
    public let adult: Bool
    public let backdropPath: String
    public let budget: Int
    public let genres: [Genres]
    public let homepage: String
    public let id: Int
    public let imdbID: String
    public let originalLanguage: String
    public let originalTitle: String
    public let overview: String
    public let popularity: Double
    public let posterPath: String
    public let releaseDate: String
    public let revenue: Int
    public let runtime: Int
    public let status: String
    public let tagline: String
    public let title: String
    public let video: Bool
    public let voteAverage: Double
    public let voteCount: Int
}

extension MovieDetail
{
    public enum CodingKeys: String, CodingKey
    {
        case adult
        case backdropPath = "backdrop_path"
        case budget
        case homepage
        case id
        case genres
        case imdbID = "imdb_id"
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case popularity
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case revenue
        case runtime
        case status
        case tagline
        case title
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
    }
}

public struct Genres: Codable
{
    public let id: Int
    public let name: String
}
