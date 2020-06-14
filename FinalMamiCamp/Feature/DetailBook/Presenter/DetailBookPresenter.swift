//
//  DetailBookPresenter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class DetailBookPresenter: DetailBookViewToPresenterProtocol {
    
    var view: DetailBookPresenterToViewProtocol?
    var interactor: DetailBookPresenterToInteractorProtocol?
    var router: DetailBookPresenterToRouterProtocol?
    
    func getGetDetail(param: DetailBookParam) {
        interactor?.getGetDetail(param: param)
    }
}

extension DetailBookPresenter: DetailBookInteractorToPresenterProtocol {
    func onGetDetailBookSuccess(body: ServerResponse<DetailBookResponse>, responseCode: Int) {
        view?.onGetDetailBookSuccess(body: body, responseCode: responseCode)
    }
    
    func onGetDetailBookFailure(errMsg: String, responseCode: Int, errorCode: Int) {
        view?.onGetDetailBookFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
    }
    
    func onGetDetailBookLoading(isLoading: Bool) {
        view?.onGetDetailBookLoading(isLoading: isLoading)
    }
    
    
    
}
