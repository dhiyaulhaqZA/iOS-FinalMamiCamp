//
//  BookInteractor.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class BookInteractor: BookPresenterToInteractorProtocol {
    
    var presenter: BookInteractorToPresenterProtocol?
    
    func getNewBooks(param: GetNewBookBody) {
        let call = NetworkCall<[BookResponse]>()
        call.request(.newBook(query: param)) { (callback) in
            switch callback {
            case .onResponse(let body, let responseCode):
                self.presenter?.onGetNewBooksSuccess(body: body, responseCode: responseCode)
            case .onFailure(let errMsg, let responseCode, let errorCode):
                self.presenter?.onGetNewBooksFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
            case .onLoading(let isLoading):
                self.presenter?.onGetNewBooksLoading(isLoading: isLoading)
            }
        }
    }
    
    func getBookByGenre(param: GetBookBody) {
        let call = NetworkCall<[BookResponse]>()
        call.request(.booksByGenre(query: param)) { (callback) in
            switch callback {
            case .onResponse(let body, let responseCode):
                self.presenter?.onGetBooksByGenreSuccess(body: body, responseCode: responseCode)
            case .onFailure(let errMsg, let responseCode, let errorCode):
                self.presenter?.onGetBooksByGenreFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
            case .onLoading(let isLoading):
                self.presenter?.onGetBooksByGenreLoading(isLoading: isLoading)
            }
        }
    }
}
