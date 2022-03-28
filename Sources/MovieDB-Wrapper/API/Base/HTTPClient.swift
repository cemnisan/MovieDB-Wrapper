//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation


public protocol HTTPClient
{
    func execute<T: Codable>(endpoint: Endpoint,
                             responseModel: T.Type) async -> Result<T, RequestError>
}

extension HTTPClient
{
    public func execute<T:Codable>(endpoint: Endpoint,
                                   responseModel: T.Type) async -> Result<T, RequestError> {
        guard let request = endpoint.url else { return .failure(.invalidURL) }
    
        do {
            let (data, response) = try await URLSession.shared.data(for: request, delegate: nil)
            guard let response = response as? HTTPURLResponse else { return .failure(.noResponse) }
            
            switch response.statusCode {
            case 200...299:
                guard let decodedResponse = try? JSONDecoder()
                        .decode(responseModel,
                                from: data) else { return .failure(.decode) }
                return .success(decodedResponse)
            case 401:
                return .failure(.unauthorized)
            default:
                return .failure(.unexpectedStatusCode)
            }
        } catch {
            return .failure(.unknown)
        }
    }
}
