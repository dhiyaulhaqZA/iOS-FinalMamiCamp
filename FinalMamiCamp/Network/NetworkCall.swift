//
//  NetworkCall.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 23/10/19.
//  Copyright © 2019 dhiyaulhaqza. All rights reserved.
//

import Moya
import Alamofire

enum ResponseListener<T: Codable> {
    case onResponse(body: ServerResponse<T>, responseCode: Int)
    case onFailure(errMsg: String, responseCode: Int, errorCode: Int)
    case onLoading(isLoading: Bool)
}

struct ServerResponse<T: Codable>: Decodable {
    let success: Bool?
    let result: T?
}

// MARK: - Error
struct ErrorResponse: Codable {
    let code: Int?
    let context: AnyCodable?
    let message: String?
    let statusCode: Int?

    enum CodingKeys: String, CodingKey {
        case code, context, message
        case statusCode = "status_code"
    }
}

enum ResponseOtherListener {
    case onResponse(body: GenreResponse, responseCode: Int)
    case onFailure(errMsg: String, responseCode: Int, errorCode: Int)
    case onLoading(isLoading: Bool)
}

/// An helper class for network requests
class NetworkCall<T: Codable> {
    
    private let provider = MoyaProvider<CacabaApiService>(plugins: [NetworkLoggerPlugin(verbose: true)])
    
    func request(_ cacabaService: CacabaApiService, callback: @escaping (ResponseListener<T>) -> Void) {
        callback(.onLoading(isLoading: true))
        provider.request(cacabaService) { (result) in
            switch result {
            case .success(let response):
                let responseCode = response.statusCode
                do {
                    let serverResponse = try JSONDecoder().decode(ServerResponse<T>.self, from: response.data)
                    if responseCode >= 200 && responseCode <= 299 {
                        callback(.onResponse(body: serverResponse, responseCode: responseCode))
                    }
                } catch {
                    callback(.onFailure(errMsg: "Terjadi Kesalahan", responseCode: 0, errorCode: 1005))
                    print("NetworkCall : Throw error \(error)")
                }
            case .failure(let error):
                callback(.onFailure(errMsg: "Koneksi tidak stabil", responseCode: 0, errorCode: 1000))
                print("NetworkCall : \(error)")
            }
            callback(.onLoading(isLoading: false))
        }
    }
    
    // custom JSON structure only for genre response
    func requestOther(_ cacabaService: CacabaApiService, callback: @escaping (ResponseOtherListener) -> Void) {
        callback(.onLoading(isLoading: true))
        provider.request(cacabaService) { (result) in
            switch result {
            case .success(let response):
                let responseCode = response.statusCode
                do {
                    let serverResponse = try JSONDecoder().decode(GenreResponse.self, from: response.data)
                    if responseCode >= 200 && responseCode <= 299 {
                        callback(.onResponse(body: serverResponse, responseCode: responseCode))
                    }
                } catch {
                    callback(.onFailure(errMsg: "Terjadi Kesalahan", responseCode: 0, errorCode: 1005))
                    print("NetworkCall : Throw error \(error)")
                }
            case .failure(let error):
                callback(.onFailure(errMsg: "Koneksi tidak stabil", responseCode: 0, errorCode: 1000))
                print("NetworkCall : \(error)")
            }
            callback(.onLoading(isLoading: false))
        }
    }
}
