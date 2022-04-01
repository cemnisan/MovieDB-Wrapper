//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public protocol DiscoverServiceable
{
    func getMovieDiscover(
        language: String?,
        region: String?,
        sortBy: String?,
        certificationCountry: String?,
        certification: String?,
        certificationIte: String?,
        certificationGte: String?,
        includeAdult: Bool?,
        includeVideo: Bool?,
        pageNumber: Int?,
        primaryReleaseYear: Int?,
        primaryReleaseDateGte: String?,
        primaryReleaseDateIte: String?,
        releaseDateGte: String?,
        releaseDateIte: String?,
        withReleaseType: Int?,
        year: Int?,
        voteCountGte: Int?,
        voteCountIte: Int?,
        voteAverageGte: Int?,
        voteAverageIte: Int?,
        withCast: String?,
        withCrew: String?,
        withPeople: String?,
        withCompanies: String?,
        withGenres: String?,
        withKeywords: String?,
        withoutKeywords: String?,
        withRunTimeGte: Int?,
        withRunTimeIte: Int?,
        withOriginalLanguage: String?,
        withWatchProviders: String?,
        watchRegion: String?,
        withWatchMonetizationTypes: String?,
        withoutCompanies: String?
    ) async -> Result<DiscoverMoviesResult, RequestError>
}
