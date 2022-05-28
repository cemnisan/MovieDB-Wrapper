//
//  File.swift
//  
//
//  Created by Cem Nisan on 28.05.2022.
//

import Foundation

public protocol CreditsServiceableProtocol {
    func getCreditDetails(with creditID: String) async -> Result<Credits>
}
