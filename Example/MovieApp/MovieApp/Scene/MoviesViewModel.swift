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
    
    private var popularMovies: [Movies] = []
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
    
    func popularMoviesAtIndex(_ index: Int) -> Movies
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
    
    func exSearch() {
        let service: SearchServiceable = SearchService()
        
        Task(priority: .background) {
            let results = await service.searchMovies(with: "Fight Club", language: "en-US", pageNumber: 1, includeAdult: false)
            print(SearchMoviesEndpoint.searchMovies(language: "en-US", query: "Fight Club", pageNumber: 1, includeAdult: false).url)
            print(results[0])
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
