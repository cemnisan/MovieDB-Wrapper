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
    private var currentPageNumber: Int?
    
    init(service: MoviesServiceable)
    {
        self.service = service
    }
}

extension MoviesViewModel: MoviesViewModelProtocol
{
    func loadPopularMovies(with page: Int)
    {
        Task(priority: .background) {
            let results = await service.getPopularMovies(page: page)
            
            switch results {
            case .success(let popularMovies):
                self.pageNumber = page
                self.currentPageNumber = popularMovies.totalPages
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
        if pageNumber != currentPageNumber {
            return true
        } else {
            return false
        }
    }
}

extension MoviesViewModel
{
    private func notify(output: MoviesViewModelOutput)
    {
        self.delegate?.handleOutput(output: output)
    }
}
