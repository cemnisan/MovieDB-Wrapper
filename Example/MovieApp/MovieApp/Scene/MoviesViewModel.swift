//
//  MoviesViewModel.swift
//  MovieApp
//
//  Created by Cem Nisan on 29.03.2022.
//

import MovieDB_Wrapper

final class MoviesViewModel
{
    private let service: MoviesServiceable
    weak var delegate: MoviesViewModelDelegate?
    
    private var popularMovies: [Movie] = []
    private var pageNumber:Int?
    private var totalPageNumber: Int?
    
    init(service: MoviesServiceable)
    {
        self.service = service
    }
}

extension MoviesViewModel: MoviesViewModelProtocol
{
    func loadPopularMovies(with pageNumber: Int)
    {
        Task(priority: .background)
        {
            let results = await service.getPopularMovies(pageNumber: pageNumber)
            
            switch results {
            case .success(let popularMovies):
                self.pageNumber = pageNumber
                self.totalPageNumber = popularMovies.totalPages
                self.popularMovies.append(contentsOf: popularMovies.results)
                self.notify(output: .loadPopularMovies(.success(true)))
            case .failure(let error):
                self.notify(output: .loadPopularMovies(.error(error)))
            }
        }
    }
    
    func numberOfPopularMovies() -> Int
    {
        return popularMovies.count
    }
    
    func popularMoviesAtIndex(_ index: Int) -> Movie
    {
        return popularMovies[index]
    }
    
    func isPageNumberTotalNumber() -> Bool
    {
        if pageNumber == totalPageNumber {
            return true
        }
        return false
    }
}

extension MoviesViewModel
{
    private func notify(output: MoviesViewModelOutput)
    {
        self.delegate?.handleOutput(output: output)
    }
}
