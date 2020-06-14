//
//  BookPresenter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation
import UIKit

class BookPresenter: BookViewToPresenterProtocol {
    
    var view: BookPresenterToViewProtocol?
    var interactor: BookPresenterToInteractorProtocol?
    var router: BookPresenterToRouterProtocol?
    
    func getNewBooks(param: GetNewBookBody) {
        interactor?.getNewBooks(param: param)
    }
    
    func openDetailBookScreen(navigationController: UINavigationController?, param: DetailBookParam) {
        router?.openDetailBookScreen(navigationController: navigationController, param: param)
    }
    
    func getBookByGenre(param: GetBookBody) {
        interactor?.getBookByGenre(param: param)
    }
}

extension BookPresenter: BookInteractorToPresenterProtocol {
    func onGetBooksByGenreSuccess(body: ServerResponse<[BookResponse]>, responseCode: Int) {
        view?.onGetBooksByGenreSuccess(body: body, responseCode: responseCode)
    }
    
    func onGetBooksByGenreFailure(errMsg: String, responseCode: Int, errorCode: Int) {
        view?.onGetBooksByGenreFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
    }
    
    func onGetBooksByGenreLoading(isLoading: Bool) {
        view?.onGetBooksByGenreLoading(isLoading: isLoading)
    }
    
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
