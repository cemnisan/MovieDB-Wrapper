//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.05.2022.
//

import Foundation

public final class CreditsService: HTTPClient, CreditsServiceableProtocol {
    public init() { }
}

extension CreditsService {
    public func getCreditDetails(with creditID: String) async -> Result<Credits> {
        return await execute(
            endpoint: CreditsEndpoint.getCreditDetails(creditID: creditID),
            responseModel: Credits.self)
    }
}
