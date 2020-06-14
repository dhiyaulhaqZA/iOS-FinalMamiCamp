//
//  GenreEntity.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

struct GenreParam {
    
}

enum GenreSection {
    case genres, newBooks
    
    var title: String {
        switch self {
        case .genres:
            return "Genres"
        case .newBooks:
            return "New Books"
        }
    }
}
