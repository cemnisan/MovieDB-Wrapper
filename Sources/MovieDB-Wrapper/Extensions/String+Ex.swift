//
//  File.swift
//  
//
//  Created by Cem Nisan on 30.03.2022.
//

import Foundation

extension String
{
    func removeBeginAndEndSpaces() -> String
    {
        guard first == " " || last == " " else { return self }
       
        return trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func addPlusToMiddleSpaces() -> String
    {
        let removedBeginAndEndSpaces = removeBeginAndEndSpaces()
        
        return removedBeginAndEndSpaces.components(separatedBy: .whitespaces).joined(separator: "+")
    }
}
