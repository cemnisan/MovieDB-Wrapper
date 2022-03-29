//
//  AppContainer.swift
//  MovieApp
//
//  Created by Cem Nisan on 29.03.2022.
//

import Foundation
import MovieDB_Wrapper

let app = AppContainer()

final class AppContainer
{
    let router = AppRouter()
    let service = MovieService()
}
