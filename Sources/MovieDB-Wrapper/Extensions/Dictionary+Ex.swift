//
//  File.swift
//  
//
//  Created by Cem Nisan on 31.03.2022.
//

import Foundation

extension Dictionary
{
    func stringFromHttpParameters() -> String
    {
        let parametersDict = self.map { dict -> String in
            let key = dict.key
            let value = dict.value

            let escapedKey = (key as! String).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
            let escapedValue = (String(describing: value)).addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!

            return "\(escapedKey)=\(escapedValue)"
        }

        return parametersDict.joined(separator: "&")
    }
}