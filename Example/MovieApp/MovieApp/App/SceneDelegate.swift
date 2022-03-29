//
//  SceneDelegate.swift
//  MovieApp
//
//  Created by Cem Nisan on 28.03.2022.
//

import UIKit
import MovieDB_Wrapper

final class SceneDelegate: UIResponder, UIWindowSceneDelegate
{
    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions)
    {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        Config.accessToken = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4YjY1OGVhYTZiN2VjMjVkOTEzNDIzZDRhZmVmZTMxNyIsInN1YiI6IjVmOTk0YTRkMTc3OTJjMDAzNjNmNTBkNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.OvEG-cket_cjHmRgRbYIYZA5GbG__Dl2KWhbTmIRrIE"
        
        app.router.start(with: windowScene)
    }
}

