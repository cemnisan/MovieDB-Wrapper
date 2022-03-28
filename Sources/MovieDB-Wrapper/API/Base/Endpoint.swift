//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public protocol Endpoint {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
}

extension Endpoint
{
    public var baseURL: String {
        return K.baseURL
    }
    
    public var method: HTTPMethod {
        return .get
    }
    
    public var body: [String: String]? {
        return nil
    }
    
    public var header: [String: String]? {
        return [
            "Authorization": "Bearer \(K.accessToken)",
            "Content-Type": "application/json;charset=utf-8"
        ]
    }
}
