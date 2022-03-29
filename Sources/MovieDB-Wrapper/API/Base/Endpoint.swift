//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation

public protocol Endpoint
{
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var header: [String: String]? { get }
    var body: [String: String]? { get }
    var url: URLRequest? { get }
}

extension Endpoint
{
    public var baseURL: String {
        return Config.baseURL
    }
    
    public var method: HTTPMethod {
        return .get
    }
    
    public var body: [String: String]? {
        return nil
    }
    
    public var header: [String: String]? {
        return [
            "Authorization": "Bearer \(Config.accessToken)",
            "Content-Type": "application/json;charset=utf-8"
        ]
    }
    
    public var url: URLRequest? {
        guard let url = URL(string: baseURL + path) else { return nil }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.allHTTPHeaderFields = header
        
        if let body = body {
            urlRequest.httpBody = try? JSONSerialization.data(withJSONObject: body,
                                                              options: [])
        }
        
        return urlRequest
    }
}
