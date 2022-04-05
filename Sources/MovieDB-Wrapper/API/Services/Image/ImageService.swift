//
//  File.swift
//  
//
//  Created by Cem Nisan on 5.04.2022.
//

import UIKit.UIImage

public final class ImageService: HTTPClient, ImageServiceableProtocol
{
    public func getMoviePosterImage(imagePath: String) async throws -> UIImage
    {
        return try await execute(
            endpoint: ImageEndpoint.getImage(image: .posterPath(path: imagePath)))
    }
    
    public func getMovieBackdropImage(imagePath: String) async throws -> UIImage
    {
        return try await execute(
            endpoint: ImageEndpoint.getImage(image: .backdropPath(path: imagePath)))
    }
}
