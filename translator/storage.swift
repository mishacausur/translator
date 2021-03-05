//
//  storage.swift
//  translator
//
//  Created by Misha Causur on 03.03.2021.
//

import Foundation
import UIKit

public final class word: Codable {
    public var word: String
    public var translation: String
    
    public init(word: String, translation: String){
        self.word = word
        self.translation = translation
    }
}


