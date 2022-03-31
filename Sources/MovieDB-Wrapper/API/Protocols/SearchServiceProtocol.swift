//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

public protocol SearchServiceable
{
    func searchMovies(
        query: String,
        language:String?,
        pageNumber: Int?,
        includeAdult: Bool?,
        region: String?,
        year: Int?,
        primaryReleaseYear:Int?) async -> Result<SearchMoviesResult, RequestError>
}
