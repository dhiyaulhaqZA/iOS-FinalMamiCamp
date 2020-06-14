//
//  DetailBookInteractor.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class DetailBookInteractor: DetailBookPresenterToInteractorProtocol {
    
    var presenter: DetailBookInteractorToPresenterProtocol?
    
    func getGetDetail(param: DetailBookParam) {
        let call = NetworkCall<DetailBookResponse>()
        call.request(.detailBook(id: param.id)) { (callback) in
            switch callback {
            case .onResponse(let body, let responseCode):
                self.presenter?.onGetDetailBookSuccess(body: body, responseCode: responseCode)
            case .onFailure(let errMsg, let responseCode, let errorCode):
                self.presenter?.onGetDetailBookFailure(errMsg: errMsg, responseCode: responseCode, errorCode: errorCode)
            case .onLoading(let isLoading):
                self.presenter?.onGetDetailBookLoading(isLoading: isLoading)
            }
        }
    }
}
