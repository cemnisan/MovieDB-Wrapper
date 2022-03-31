//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public protocol MoviesServiceable
{
    func getPopularMovies(
        language:String?,
        pageNumber: Int?,
        region: String?) async -> Result<PopularMovies, RequestError>
    
    func getMovieDetails(
        id: Int,
        language: String?,
        appendToResponse: String?) async -> Result<MovieDetail, RequestError>
    
    func getMovieReviews(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<MovieReviews, RequestError>
    
    func getSimilarMovies(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<SimilarMovies, RequestError>
    
    func getUpComingMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<UpComingMovies, RequestError>
}
