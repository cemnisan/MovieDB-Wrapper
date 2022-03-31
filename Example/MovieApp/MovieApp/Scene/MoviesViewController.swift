//
//  MoviesViewController.swift
//  MovieApp
//
//  Created by Cem Nisan on 29.03.2022.
//

import UIKit

final class MoviesViewController: UIViewController
{
    var viewModel: MoviesViewModelProtocol!
    private var pageNumber = 1
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        configure()
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        super.viewDidAppear(animated)
        
        viewModel.loadPopularMovies(with: pageNumber)
        viewModel.exSearch()
    }
}

// MARK: - Configure
extension MoviesViewController
{
    private func configure()
    {
        configureTableView()
        configureViewModel()
    }
    
    private func configureViewModel()
    {
        viewModel.delegate = self
    }
    
    private func configureTableView()
    {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
    }
}

// MARK: - ViewModel's Delegate
extension MoviesViewController: MoviesViewModelDelegate
{
    func handleOutput(output: MoviesViewModelOutput)
    {
        switch output {
        case .loadPopularMovies(.success(_)):
            DispatchQueue.main.async { self.tableView.reloadData() }
        case .loadPopularMovies(.error(let error)):
            print(error)
        }
    }
}

extension MoviesViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int
    {
        return viewModel.numberOfPopularMovies()
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let popularMovie = viewModel.popularMoviesAtIndex(indexPath.row)
        
        cell.textLabel?.text = popularMovie.originalTitle
        
        return cell
    }
}

extension MoviesViewController: UITableViewDelegate { }

extension MoviesViewController
{
    func scrollViewDidEndDragging(_ scrollView: UIScrollView,
                                  willDecelerate decelerate: Bool)
    {
        let currentOffset: CGFloat = scrollView.contentOffset.y
        let maximumOffset: CGFloat = scrollView.contentSize.height - scrollView.frame.size.height
        
        if maximumOffset - currentOffset <= 50
        {
            if !viewModel.isPageNumberTotalNumber()
            {
                pageNumber += 1
                viewModel.loadPopularMovies(with: pageNumber)
            }
        }
    }
}
