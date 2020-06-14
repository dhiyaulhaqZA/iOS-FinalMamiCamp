//
//  CacabaApiService.swift
//  Consumer
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 21/10/19.
//  Copyright © 2019 Hepicar. All rights reserved.
//

import Moya

enum CacabaApiService {
    case genre
    case booksByGenre(query: GetBookBody)
    case newBook(query: GetNewBookBody)
    case detailBook(id: Int)
    case detailAuthor(id: Int)
}

extension CacabaApiService: TargetType {

    var baseURL: URL {
        switch self {
        default:
            return URL(string: "https://cabaca.id:8443")!
        }
    }

    var path: String {
        switch self {
        case .genre:
            return "/api/v2/cabaca/_table/genre"
        case .booksByGenre:
            return "/api/v2/book/category"
        case .newBook:
            return "/api/v2/book/uptodate"
        case .detailBook(let bookId):
            return "/api/v2/book/detail/\(bookId)"
        case .detailAuthor(let userId):
            return "/api/v2/writer/detail/\(userId)"
        }
    }

    var method: Method {
        switch self {
        default:
            return .get
        }
    }

    var sampleData: Data {
        return Data()
    }

    var task: Task {
        switch self {
        case .booksByGenre(query: let params):
            return .requestParameters(parameters: params.toDictionary(), encoding: URLEncoding.default)
        case .newBook(query: let params):
            return .requestParameters(parameters: params.toDictionary(), encoding: URLEncoding.default)
        default:
            return .requestPlain
        }
    }

    var headers: [String: String]? {
        switch self {
        case .genre, .booksByGenre, .newBook, .detailBook, .detailAuthor:
            return getHeader(needAuthorization: true)
        default:
            return getHeader(needAuthorization: false)
        }
    }

    private func getHeader(needAuthorization: Bool) -> [String: String] {
        if needAuthorization {
            return ["Content-type": "application/json", "x-dreamfactory-api-key": "25e0bf00ab2fa7f03a9fa57035139e47ccb28c20658f6de907b8011347e369fb"]
        } else {
            return ["Content-type": "application/json"]
        }
    }
}
