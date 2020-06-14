//
//  GenreInteractor.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class GenreInteractor: GenrePresenterToInteractorProtocol {
    
    var presenter: GenreInteractorToPresenterProtocol?
    
    func getGenres() {
        let call = NetworkCall<GenreResponse>()
        call.requestOther(.genre) { (callback) in
            switch callback {
            case .onResponse(let body, let responseCode):
                self.presenter?.onGetGenresSuccess(body: body, responseCode: responseCode)
            case .onFailure(let errMsg, let responseCode, let errorCode):
                self.presenter?.onGetGenresFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
            case .onLoading(let isLoading):
                self.presenter?.onGetGenresLoading(isLoading: isLoading)
            }
        }
    }
}
