//
//  GetBookBody.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

struct GetBookBody: Codable {
    let id: Int
}

// MARK: - Result
struct BooksResponse: Codable {
    let id: Int?
    let title, coverURL: String?
    let writerID: Int?
    let createdAt, scheduleTask, status: String?
    let writerByWriterID: WriterByWriterID?
    let genreID: Int?
    let genreByGenreID: GenreByGenreID?
    let isNew: Bool?
    let viewCount: Int?
    let rateSum: Double?
    let isUpdate: Bool?
    let chapterCount: Int?

    enum CodingKeys: String, CodingKey {
        case id, title
        case coverURL = "cover_url"
        case writerID = "writer_id"
        case createdAt = "created_at"
        case scheduleTask = "schedule_task"
        case status
        case writerByWriterID = "Writer_by_writer_id"
        case genreID = "genre_id"
        case genreByGenreID = "Genre_by_genre_id"
        case isNew
        case viewCount = "view_count"
        case rateSum = "rate_sum"
        case isUpdate = "is_update"
        case chapterCount = "chapter_count"
    }
}

// MARK: - GenreByGenreID
struct GenreByGenreID: Codable {
    let id: Int?
    let title, iconURL: String?
    let count: Int?

    enum CodingKeys: String, CodingKey {
        case id, title
        case iconURL = "icon_url"
        case count
    }
}

// MARK: - Test
struct Test: Codable {
    let id: Int?
}
