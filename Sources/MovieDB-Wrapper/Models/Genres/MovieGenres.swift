//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public struct GenresResult: Codable
{
    public let genres: [Genre]
}

public struct Genre: Codable
{
    public let id: Int
    public let name: String
}
