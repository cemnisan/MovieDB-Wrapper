//
//  AppRouter.swift
//  MovieApp
//
//  Created by Cem Nisan on 29.03.2022.
//

import UIKit.UIWindow

final class AppRouter
{
    let window: UIWindow
    
    init()
    {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
}

extension AppRouter
{
    func start(with windowScene: UIWindowScene)
    {
        let viewController = MoviesBuilder.make()
        
        window.windowScene = windowScene
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}
