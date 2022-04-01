//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public enum MovieDiscoverEndpoint: Endpoint
{
    case getMovieDiscover(
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
        withoutCompanies: String?
    )
}

extension MovieDiscoverEndpoint
{
    public var path: String {
        switch self {
        case .getMovieDiscover(let language,
                               let region,
                               let sortBy,
                               let certificationCountry,
                               let certification,
                               let certificationIte,
                               let certificationGte,
                               let includeAdult,
                               let includeVideo,
                               let pageNumber,
                               let primaryReleaseYear,
                               let primaryReleaseDateGte,
                               let primaryReleaseDateIte,
                               let releaseDateGte,
                               let releaseDateIte,
                               let withReleaseType,
                               let year,
                               let voteCountGte,
                               let voteCountIte,
                               let voteAverageGte,
                               let voteAverageIte,
                               let withCast,
                               let withCrew,
                               let withPeople,
                               let withCompanies,
                               let withGenres,
                               let withoutGenres,
                               let withKeywords,
                               let withoutKeywords,
                               let withRunTimeGte,
                               let withRunTimeIte,
                               let withOriginalLanguage,
                               let withWatchProviders,
                               let watchRegion,
                               let withWatchMonetizationTypes,
                               let withoutCompanies):
            let queryDict = [
                language,
                region,
                sortBy,
                certificationCountry,
                certification,
                certificationIte,
                certificationGte,
                includeAdult,
                includeVideo,
                pageNumber,
                primaryReleaseYear,
                primaryReleaseDateGte,
                primaryReleaseDateIte,
                releaseDateGte,
                releaseDateIte,
                withReleaseType,
                year,
                voteCountGte,
                voteCountIte,
                voteAverageGte,
                voteAverageIte,
                withCast,
                withCrew,
                withPeople,
                withCompanies,
                withGenres,
                withoutGenres,
                withKeywords,
                withoutKeywords,
                withRunTimeGte,
                withRunTimeIte,
                withOriginalLanguage,
                withWatchProviders,
                watchRegion,
                withWatchMonetizationTypes,
                withoutCompanies
            ].makeDictionary(key: K.DiscoverQueryKey.discoverMovies)
            let queries = queryDict.makeURLQuery()
            
            return "\(K.DiscoverPath.movies)?\(queries)"
        }
    }
}
