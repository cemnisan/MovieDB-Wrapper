//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation
import UIKit

public protocol MoviesServiceable
{
    func getPopularMovies(
        language:String?,
        pageNumber: Int?,
        region: String?) async -> Result<PopularMovies>
    
    func getMovieDetails(
        id: Int,
        language: String?,
        appendToResponse: String?) async -> Result<MovieDetail>
    
    func getMovieReviews(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<MovieReviews>
    
    func getSimilarMovies(
        id: Int,
        language: String?,
        pageNumber: Int?) async -> Result<SimilarMovies>
    
    func getUpComingMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<UpComingMovies>
    
    func getTopRatedMovies(
        language: String?,
        pageNumber: Int?,
        region: String?) async -> Result<TopRatedMoviesResult>
    func getMovieCredits(id: Int,
                         language: String) async -> Result<MovieCredits>
}
