//
//  MoviesViewModelContracts.swift
//  MovieApp
//
//  Created by Cem Nisan on 29.03.2022.
//

import MovieDB_Wrapper

protocol MoviesViewModelProtocol
{
    var delegate: MoviesViewModelDelegate? { get set }
    
    func loadPopularMovies(with pageNumber: Int)
    func numberOfPopularMovies() -> Int
    func popularMoviesAtIndex(_ index: Int) -> Movies
    func isPageNumberTotalNumber() -> Bool
    func exSearch()
}

protocol MoviesViewModelDelegate: AnyObject
{
    func handleOutput(output: MoviesViewModelOutput)
}

enum MoviesViewModelOutput
{
    case loadPopularMovies(Result<Bool>)
}

enum Result<Value>
{
    case success(Value)
    case error(RequestError)
}
