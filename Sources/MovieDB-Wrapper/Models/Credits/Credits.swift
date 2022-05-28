//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.05.2022.
//

import Foundation

public struct Credits: Codable {
    public var creditType, department, job: String
    public var media: Movies
    public var mediaType, id: String
    public var person: Person
    
    enum CodingKeys: String, CodingKey {
        case creditType = "credit_type"
        case department, job, media
        case mediaType = "media_type"
        case id, person
    }
}

public struct Person: Codable {
    var knownFor: [Movies]
    var gender: Int
    var profilePath: String
    var adult: Bool
    var name, knownForDepartment: String
    var id: Int
    var popularity: Double
    
    enum CodingKeys: String, CodingKey {
        case knownFor = "known_for"
        case gender
        case profilePath = "profile_path"
        case adult, name
        case knownForDepartment = "known_for_department"
        case id, popularity
    }
}
