//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public protocol GenresServiceable
{
    func getMovieGenres(language: String?) async -> Result<GenresResult>
}

