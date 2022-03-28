//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public protocol MoviesServiceable
{
    func getPopularMovies(page: Int) async -> Result<PopularMovies, RequestError>
    func getMovieDetails(id: Int) async  -> Result<MovieDetail, RequestError>
    func getMovieReviews(id: Int, page: Int) async -> Result<MovieReviews, RequestError>
    func getSimilarMovies(id: Int, page: Int) async -> Result<SimilarMovies, RequestError>
    func getUpComingMovies(page: Int) async -> Result<UpComingMovies, RequestError>
}
