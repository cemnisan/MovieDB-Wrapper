//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public struct MovieReviews: Codable
{
    let id, page: Int?
    let results: [MovieReviewsResult]?
    let totalPages, totalResults: Int?
}

extension MovieReviews
{
    enum CodingKeys: String, CodingKey
    {
        case id, page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}

public struct MovieReviewsResult: Codable {
    let author: String?
    let authorDetails: AuthorDetails?
    let content, createdAt, id, updatedAt: String?
    let url: String?
}

extension MovieReviewsResult
{
    enum CodingKeys: String, CodingKey
    {
        case author
        case authorDetails = "author_details"
        case content
        case createdAt = "created_at"
        case id
        case updatedAt = "updated_at"
        case url
    }
}

struct AuthorDetails: Codable
{
    let name, username, avatarPath: String?
    let rating: Int?
}

extension AuthorDetails
{
    enum CodingKeys: String, CodingKey
    {
        case name, username
        case avatarPath = "avatar_path"
        case rating
    }
}
