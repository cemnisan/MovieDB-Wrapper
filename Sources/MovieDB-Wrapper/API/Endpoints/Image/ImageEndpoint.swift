//
//  File.swift
//  
//
//  Created by Cem Nisan on 2.04.2022.
//

import Foundation

public enum ImageType
{
    case posterPath(path: String)
    case backdropPath(path: String)
    
    public var imagePath: String {
        switch self {
        case .posterPath(let path):
            return path
        case .backdropPath(let path):
            return path
        }
    }
}

public enum ImageEndpoint: Endpoint
{
    case getImage(image: ImageType)
}

extension ImageEndpoint
{
    public var baseURL: String {
        return K.baseImageURL
    }
    
    public var header: [String : String]? {
        return nil
    }
    
    public var path: String {
        switch self {
        case .getImage(let path):
            return K.baseImageURL + path.imagePath
        }
    }
}
