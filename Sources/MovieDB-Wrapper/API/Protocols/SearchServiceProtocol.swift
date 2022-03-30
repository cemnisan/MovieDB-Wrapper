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
        with query: String,
        language:String,
        pageNumber: Int,
        includeAdult: Bool) async -> Result<SearchMoviesResult, RequestError>
}
