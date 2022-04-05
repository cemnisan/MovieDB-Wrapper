//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public final class DiscoverService: HTTPClient, DiscoverServiceable
{
    public init() { }
}

extension DiscoverService
{
    public func getMovieDiscover(
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
        withoutGenres: String?,
        withKeywords: String?,
        withoutKeywords: String?,
        withRunTimeGte: Int?,
        withRunTimeIte: Int?,
        withOriginalLanguage: String?,
        withWatchProviders: String?,
        watchRegion: String?,
        withWatchMonetizationTypes: String?,
        withoutCompanies: String?) async -> Result<DiscoverMoviesResult>
    {
        return await execute(
            endpoint: MovieDiscoverEndpoint.getMovieDiscover(
                language: language,
                region: region,
                sortBy: sortBy,
                certificationCountry: certificationCountry,
                certification: certification,
                certificationIte: certificationIte,
                certificationGte: certificationGte,
                includeAdult: includeAdult,
                includeVideo: includeVideo,
                pageNumber: pageNumber,
                primaryReleaseYear: primaryReleaseYear,
                primaryReleaseDateGte: primaryReleaseDateGte,
                primaryReleaseDateIte: primaryReleaseDateIte,
                releaseDateGte: releaseDateGte,
                releaseDateIte: releaseDateIte,
                withReleaseType: withReleaseType,
                year: year,
                voteCountGte: voteCountGte,
                voteCountIte: voteCountIte,
                voteAverageGte: voteAverageGte,
                voteAverageIte: voteAverageIte,
                withCast: withCast,
                withCrew: withCrew,
                withPeople: withPeople,
                withCompanies: withCompanies,
                withGenres: withGenres,
                withoutGenres: withoutGenres,
                withKeywords: withKeywords,
                withoutKeywords: withoutKeywords,
                withRunTimeGte: withRunTimeGte,
                withRunTimeIte: withRunTimeIte,
                withOriginalLanguage: withOriginalLanguage,
                withWatchProviders: withWatchProviders,
                watchRegion: watchRegion,
                withWatchMonetizationTypes: withWatchMonetizationTypes,
                withoutCompanies: withoutCompanies),
            responseModel: DiscoverMoviesResult.self)
    }
}
