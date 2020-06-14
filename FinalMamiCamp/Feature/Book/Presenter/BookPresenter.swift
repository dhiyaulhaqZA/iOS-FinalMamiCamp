//
//  BookPresenter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class BookPresenter: BookViewToPresenterProtocol {
    var view: BookPresenterToViewProtocol?
    var interactor: BookPresenterToInteractorProtocol?
    var router: BookPresenterToRouterProtocol?
    
    func getNewBooks(param: GetNewBookBody) {
        interactor?.getNewBooks(param: param)
    }
}

extension BookPresenter: BookInteractorToPresenterProtocol {
    func onGetNewBooksSuccess(body: ServerResponse<[BookResponse]>, responseCode: Int) {
        view?.onGetNewBooksSuccess(body: body, responseCode: responseCode)
    }
    
    func onGetNewBooksFailure(errMsg: String, responseCode: Int, errorCode: Int) {
        view?.onGetNewBooksFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
    }
    
    func onGetNewBooksLoading(isLoading: Bool) {
        view?.onGetNewBooksLoading(isLoading: isLoading)
    }
    
}
