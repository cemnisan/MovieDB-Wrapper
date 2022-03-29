//
//  MoviesBuilder.swift
//  MovieApp
//
//  Created by Cem Nisan on 29.03.2022.
//

import UIKit

final class MoviesBuilder
{
    static func make() -> MoviesViewController
    {
        let storyboard = UIStoryboard(name: "Movies", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "Movies") as! MoviesViewController
        viewController.viewModel = MoviesViewModel(service: app.service)
        
        return viewController
    }
}
