//
//  NewBookBody.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

struct GetNewBookBody: Codable {
    let limit: Int
}

// MARK: - Result
struct NewBookResponse: Codable {
    let id: Int?
    let title: String?
    let writerID: Int?
    let coverURL, createdAt, scheduleTask, status: String?
    let category: AnyCodable?
    let writerByWriterID: WriterByWriterID?
    let isUpdate: Bool?
    let bookID: Int?
    let isNew: Bool?
    let viewCount: Int?
    let rateSum: Double?
    let chapterCount: Int?

    enum CodingKeys: String, CodingKey {
        case id, title
        case writerID = "writer_id"
        case coverURL = "cover_url"
        case createdAt = "created_at"
        case scheduleTask = "schedule_task"
        case status, category
        case writerByWriterID = "Writer_by_writer_id"
        case isUpdate = "is_update"
        case bookID = "book_id"
        case isNew
        case viewCount = "view_count"
        case rateSum = "rate_sum"
        case chapterCount = "chapter_count"
    }
}

// MARK: - UserByUserID
struct UserByUserID: Codable {
    let id: Int?
    let name: String?
}

// MARK: - Time
struct Time: Codable {
    let bookOfficial, chapterNew, chapterBook, user: Double?
    let viewer, rating, chapter: Double?

    enum CodingKeys: String, CodingKey {
        case bookOfficial = "book_official"
        case chapterNew = "chapter_new"
        case chapterBook = "chapter_book"
        case user, viewer, rating, chapter
    }
}
