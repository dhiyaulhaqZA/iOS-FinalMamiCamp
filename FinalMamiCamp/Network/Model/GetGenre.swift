//
//  GetGenre.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

// MARK: - GenreResponse
struct GenreResponse: Codable {
    let resource: [GenreResult]?
}

struct GenreResult: Codable {
    let id: Int?
    let title, iconURL: String?
    let count, isPrimary: Int?

    enum CodingKeys: String, CodingKey {
        case id, title
        case iconURL = "icon_url"
        case count
        case isPrimary = "is_primary"
    }
}
