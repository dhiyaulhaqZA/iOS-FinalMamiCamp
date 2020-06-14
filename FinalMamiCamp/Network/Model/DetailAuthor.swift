//
//  DetailAuthor.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

// MARK: - Result
struct GetAuthorResponse: Codable {
    let id: Int?
    let name, username, photoURL, email: String?
    let phone, linkUser: String?
    let coin: Int?
    let deskripsi, gender, birthday: String?
    let karya: [Karya]?
    let writerByUserID: WriterByErID?
    let writerID, writerLevel: Int?
    let writerLevelName: String?
    let currentLevel, countFollower, countFollowing: Int?
    let isFollowing: Bool?
    let followingUser: [AnyCodable]?
    let readingList: [ReadingList]?

    enum CodingKeys: String, CodingKey {
        case id, name, username
        case photoURL = "photo_url"
        case email, phone
        case linkUser = "link_user"
        case coin, deskripsi, gender, birthday, karya
        case writerByUserID = "Writer_by_user_id"
        case writerID = "writer_id"
        case writerLevel = "writer_level"
        case writerLevelName = "writer_level_name"
        case currentLevel = "current_level"
        case countFollower = "count_follower"
        case countFollowing = "count_following"
        case isFollowing = "is_following"
        case followingUser = "following_user"
        case readingList = "reading_list"
    }
}

// MARK: - Karya
struct Karya: Codable {
    let id: Int?
    let title: String?
    let writerID: Int?
    let coverURL, createdAt, scheduleTask, status: String?
    let isNew: Bool?
    let rateSum: Double?
    let viewCount: Int?
    let isUpdate: Bool?
    let writerByWriterID: WriterByErID?
    let babCount, chapterCount: Int?

    enum CodingKeys: String, CodingKey {
        case id, title
        case writerID = "writer_id"
        case coverURL = "cover_url"
        case createdAt = "created_at"
        case scheduleTask = "schedule_task"
        case status, isNew
        case rateSum = "rate_sum"
        case viewCount = "view_count"
        case isUpdate = "is_update"
        case writerByWriterID = "Writer_by_writer_id"
        case babCount = "bab_count"
        case chapterCount = "chapter_count"
    }
}

// MARK: - WriterByErID
struct WriterByErID: Codable {
    let id, userID: Int?
    let royaltyID, status: AnyCodable?
    let userByUserID: WriterByUserIDUserByUserID?

    enum CodingKeys: String, CodingKey {
        case id
        case userID = "user_id"
        case royaltyID = "royalty_id"
        case status
        case userByUserID = "User_by_user_id"
    }
}

// MARK: - WriterByUserIDUserByUserID
struct WriterByUserIDUserByUserID: Codable {
    let id: Int?
    let name, username, email: String?
}

// MARK: - ReadingList
struct ReadingList: Codable {
    let id: Int?
    let title, coverURL, status, scheduleTask: String?
    let createdAt: String?
    let writerID: Int?
    let writerByWriterID: WriterByWriterID?
    let isNew: Bool?
    let viewCount, rateSum: Int?

    enum CodingKeys: String, CodingKey {
        case id, title
        case coverURL = "cover_url"
        case status
        case scheduleTask = "schedule_task"
        case createdAt = "created_at"
        case writerID = "writer_id"
        case writerByWriterID = "Writer_by_writer_id"
        case isNew
        case viewCount = "view_count"
        case rateSum = "rate_sum"
    }
}
