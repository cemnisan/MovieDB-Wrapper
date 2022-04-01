//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

public struct GenresResult: Codable
{
    let genres: [Genre]
}

public struct Genre: Codable
{
    let id: Int
    let name: String
}
