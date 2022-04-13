//
//  File.swift
//  
//
//  Created by Cem Nisan on 12.04.2022.
//

import Foundation

public struct MovieCredits: Codable
{
    public var id: Int
    public var cast: [Cast]
}

public struct Cast: Codable
{
    public var adult: Bool
    public var gender, id: Int
    public var knownForDepartment: Department
    public var name, originalName: String
    public var popularity: Double
    public var profilePath: String?
    public var castID: Int?
    public var character: String?
    public var creditID: String
    public var order: Int?
    public var department: Department?
    public var job: String?
    
    enum CodingKeys: String, CodingKey {
        case adult, gender, id
        case knownForDepartment = "known_for_department"
        case name
        case originalName = "original_name"
        case popularity
        case profilePath = "profile_path"
        case castID = "cast_id"
        case character
        case creditID = "credit_id"
        case order, department, job
    }
}

public enum Department: String, Codable {
    case acting = "Acting"
    case art = "Art"
    case camera = "Camera"
    case costumeMakeUp = "Costume & Make-Up"
    case crew = "Crew"
    case directing = "Directing"
    case editing = "Editing"
    case production = "Production"
    case sound = "Sound"
    case visualEffects = "Visual Effects"
    case writing = "Writing"
}
