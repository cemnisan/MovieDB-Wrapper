//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.03.2022.
//

import Foundation
import UIKit

public protocol HTTPClient
{
    func execute<M: Codable,
                 E: Endpoint>(endpoint: E,
                              responseModel: M.Type) async -> Result<M>
}

extension HTTPClient
{
    /// Generic function that makes a request to the service.
    /// - Parameters:
    ///   - endpoint: Accepts all `Endpoints` that have inherited the `Endpoint` enum.
    ///   - responseModel: Accepts all `Models` with implemented `Codable` protocol.
    /// - Returns: If the request is successfull return the given `Model` if not return `RequestError`
    public func execute<M: Codable,
                        E: Endpoint>(endpoint: E,
                                     responseModel: M.Type) async -> Result<M>
    {
        guard let request = endpoint.url else { return .failure(.invalidURL) }
    
        do {
            let (data, response) = try await URLSession.shared.data(for: request, delegate: nil)
            guard let response = response as? HTTPURLResponse else { return .failure(.noResponse) }
            
            switch response.statusCode {
            case 200...299:
                guard let decodedResponse = try? JSONDecoder()
                        .decode(responseModel, from: data) else { return .failure(.decode) }
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
    
    public func execute(endpoint: ImageEndpoint) async throws -> UIImage
    {
        guard let request = endpoint.url else { throw RequestError.invalidURL }
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request, delegate: nil)
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { throw RequestError.noResponse }
            guard let image = UIImage(data: data) else { throw RequestError.decode }
            
            return image
        } catch {
            throw RequestError.unknown
        }
    }
}
