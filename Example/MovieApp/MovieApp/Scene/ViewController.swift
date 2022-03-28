//
//  ViewController.swift
//  MovieApp
//
//  Created by Cem Nisan on 28.03.2022.
//

import UIKit
import MovieDB_Wrapper

final class ViewController: UIViewController
{
    private let service = MovieService()
    private var popularMovies = [PopularMovies]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        K.accessToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YjY1OGVhYTZiN2VjMjVkOTEzNDIzZDRhZmVmZTMxNyIsInN1YiI6IjVmOTk0YTRkMTc3OTJjMDAzNjNmNTBkNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.OvEG-cket_cjHmRgRbYIYZA5GbG__Dl2KWhbTmIRrIE"
        
        fetchData(with: 1) { result in
            switch result {
            case .success(let popularMovies):
                self.popularMovies = popularMovies
            case .failure(let error):
                print(error)
            }
        }
    }

    private func fetchData(with pageNumber: Int,
                           completion: @escaping (Result<PopularMovies, RequestError>) -> Void)
    {
        Task(priority: .background) {
            let result = await service.getPopularMovies(page: pageNumber)
            completion(result.map { $0.results })
        }
    }
}

