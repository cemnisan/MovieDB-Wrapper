//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public protocol MoviesServiceable
{
    func getPopularMovies() async -> Result<PopulerMovies, RequestError>
    func getMovieDetails(id: Int) async  -> Result<MovieDetail, RequestError>
}
