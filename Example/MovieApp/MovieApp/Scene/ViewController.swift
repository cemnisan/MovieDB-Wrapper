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
    @IBOutlet weak var tableView: UITableView!

    private let service = MovieService()
    private var popularMovies = [Movie]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        
        K.accessToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YjY1OGVhYTZiN2VjMjVkOTEzNDIzZDRhZmVmZTMxNyIsInN1YiI6IjVmOTk0YTRkMTc3OTJjMDAzNjNmNTBkNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.OvEG-cket_cjHmRgRbYIYZA5GbG__Dl2KWhbTmIRrIE"
        
        fetchData(with: 1) { result in
            switch result {
            case .success(let popularMovies):
                self.popularMovies = popularMovies.results
                self.tableView.reloadData()
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
            completion(result)
        }
    }
}

extension ViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return popularMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let popularMovie = popularMovies[indexPath.row]
        
        cell.textLabel?.text = popularMovie.title
        
        return cell
    }
}

