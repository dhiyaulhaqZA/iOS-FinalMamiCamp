//
//  GenrePresenter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class GenrePresenter: GenreViewToPresenterProtocol {
    var view: GenrePresenterToViewProtocol?
    var interactor: GenrePresenterToInteractorProtocol?
    var router: GenrePresenterToRouterProtocol?
    
    func getGenres() {
        interactor?.getGenres()
    }
}

extension GenrePresenter: GenreInteractorToPresenterProtocol {
    func onGetGenresSuccess(body: GenreResponse, responseCode: Int) {
        view?.onGetGenresSuccess(body: body, responseCode: responseCode)
    }
    
    func onGetGenresFailure(errMsg: String, responseCode: Int, errorCode: Int) {
        view?.onGetGenresFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
    }
    
    func onGetGenresLoading(isLoading: Bool) {
        view?.onGetGenresLoading(isLoading: isLoading)
    }
    
}
