//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public protocol MoviesServiceable
{
    func getPopularMovies(pageNumber: Int) async -> Result<PopularMovies, RequestError>
    func getMovieDetails(id: Int) async  -> Result<MovieDetail, RequestError>
    func getMovieReviews(id: Int, pageNumber: Int) async -> Result<MovieReviews, RequestError>
    func getSimilarMovies(id: Int, pageNumber: Int) async -> Result<SimilarMovies, RequestError>
    func getUpComingMovies(pageNumber: Int) async -> Result<UpComingMovies, RequestError>
}
