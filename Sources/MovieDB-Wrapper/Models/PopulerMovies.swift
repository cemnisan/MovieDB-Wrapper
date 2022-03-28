//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

struct PopulerMovies: Codable {
    let page: Int
    let results: [Movies]
    let totalPages: Int
    let totalResults: Int
    
    enum CodingKeys: String, CodingKey {
        case page
        case results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
