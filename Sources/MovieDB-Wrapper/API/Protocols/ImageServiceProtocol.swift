//
//  File.swift
//  
//
//  Created by Cem Nisan on 5.04.2022.
//

import UIKit.UIImage

public protocol ImageServiceableProtocol
{
    func getMoviePosterImage(imagePath: String) async throws -> UIImage
    func getMovieBackdropImage(imagePath: String) async throws -> UIImage
}
