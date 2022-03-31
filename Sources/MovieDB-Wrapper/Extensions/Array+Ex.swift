//
//  File.swift
//  
//
//  Created by Cem Nisan on 1.04.2022.
//

import Foundation

extension Array
{
    func makeDictionary(key: [String]) -> Dictionary<String, Any> {
        var dictionary: [String: Any] = [:]
        
        for i in 0..<self.count {
            dictionary[key[i]] = self[i]
        }
        
        return dictionary
    }
}
