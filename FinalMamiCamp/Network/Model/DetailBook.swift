//
//  DetailBook.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

// MARK: - Result
struct DetailBookResponse: Codable {
    let id: Int?
    let title, synopsis, coverURL, status: String?
    let writerID: Int?
    let download: AnyCodable?
    let scheduleDaily: Int?
    let createdAt, updatedAt: String?
    let category, nominasi, challengeID: AnyCodable?
    let writerByWriterID: WriterByWriterID?
    let daily: String?
    let isContractActived, isFree: Bool?
    let scheduleTask: String?
    let isNew, timeToVote: Bool?
    let voteCount: String?
    let voted: Bool?
    let bookURL: String?
    let autoBuyChapter: Bool?
    let chapterPaidCount: Int?
    let hashtags: [AnyCodable]?
    let fullPrice: Int?
    let fullPurchase: Bool?
    let urlLanding: String?
    let desc: String?
    let genres: [Genre]?
    let relatedByBook: [RelatedByBook]?
    let isUpdate: Bool?
    let viewCount: Int?
    let userReview: String?
    let averageRate: Int?
    let decimalRate: Double?
    let reviews: [Review]?
    let happyhour: Bool?
    let bookChapterByBookID: [BookChapterByBookID]?
    let chapterCount: Int?
    let fullPurchased: Bool?

    enum CodingKeys: String, CodingKey {
        case id, title, synopsis
        case coverURL = "cover_url"
        case status
        case writerID = "writer_id"
        case download
        case scheduleDaily = "schedule_daily"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
        case category, nominasi
        case challengeID = "challenge_id"
        case writerByWriterID = "Writer_by_writer_id"
        case daily
        case isContractActived = "is_contract_actived"
        case isFree = "is_free"
        case scheduleTask = "schedule_task"
        case isNew
        case timeToVote = "time_to_vote"
        case voteCount = "vote_count"
        case voted
        case bookURL = "book_url"
        case autoBuyChapter = "auto_buy_chapter"
        case chapterPaidCount = "chapter_paid_count"
        case hashtags
        case fullPrice = "full_price"
        case fullPurchase = "full_purchase"
        case urlLanding = "url_landing"
        case desc, genres
        case relatedByBook = "Related_by_book"
        case isUpdate = "is_update"
        case viewCount = "view_count"
        case userReview = "User_review"
        case averageRate = "average_rate"
        case decimalRate = "decimal_rate"
        case reviews, happyhour
        case bookChapterByBookID = "BookChapter_by_book_id"
        case chapterCount = "chapter_count"
        case fullPurchased = "full_purchased"
    }
}

// MARK: - BookChapterByBookID
struct BookChapterByBookID: Codable {
    let id: Int?
    let title: String?
    let chapterSequence, price: Int?
    let isWarning: AnyCodable?
    let bookID: Int?
    let createdAt, scheduleTask: String?
    let new, isPurchased: Bool?
    let viewCount, viewByUser, likeCount: Int?
    let isReaded: Bool?

    enum CodingKeys: String, CodingKey {
        case id, title
        case chapterSequence = "chapter_sequence"
        case price
        case isWarning = "is_warning"
        case bookID = "book_id"
        case createdAt = "created_at"
        case scheduleTask = "schedule_task"
        case new
        case isPurchased = "is_purchased"
        case viewCount = "view_count"
        case viewByUser = "view_by_user"
        case likeCount = "like_count"
        case isReaded = "is_readed"
    }
}

// MARK: - Genre
struct Genre: Codable {
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

// MARK: - RelatedByBook
struct RelatedByBook: Codable {
    let id: Int?
    let title, coverURL: String?

    enum CodingKeys: String, CodingKey {
        case id, title
        case coverURL = "cover_url"
    }
}

// MARK: - Review
struct Review: Codable {
    let id, userID, rating: Int?
    let review, updatedAt: String?
    let userByReviewerID: UserByErID?

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case rating, review
        case updatedAt = "updated_at"
        case userByReviewerID = "User_by_reviewer_id"
    }
}

// MARK: - UserByErID
struct UserByErID: Codable {
    let id: Int?
    let name, username, photoURL, email: String?

    enum CodingKeys: String, CodingKey {
        case id, name, username
        case photoURL = "photo_url"
        case email
    }
}

// MARK: - WriterByWriterID
struct WriterByWriterID: Codable {
    let id, userID: Int?
    let status: AnyCodable?
    let userByUserID: UserByErID?

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case status
        case userByUserID = "User_by_user_id"
    }
}
