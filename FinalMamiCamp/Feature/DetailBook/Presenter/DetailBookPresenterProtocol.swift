//
//  DetailBookPresenterProtocol.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

protocol DetailBookViewToPresenterProtocol: class {
    var view: DetailBookPresenterToViewProtocol? {get set}
    var interactor: DetailBookPresenterToInteractorProtocol? {get set}
    var router: DetailBookPresenterToRouterProtocol? {get set}
    
    func getGetDetail(param: DetailBookParam)
}

protocol DetailBookPresenterToViewProtocol: class {
    func onGetDetailBookSuccess(body: ServerResponse<DetailBookResponse>, responseCode: Int)
    func onGetDetailBookFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetDetailBookLoading(isLoading: Bool)
}

protocol DetailBookPresenterToRouterProtocol: class {
    static func createModule(param: DetailBookParam) -> DetailBookViewController
}

protocol DetailBookPresenterToInteractorProtocol: class {
    var presenter: DetailBookInteractorToPresenterProtocol? {get set}
    
    func getGetDetail(param: DetailBookParam)
}

protocol DetailBookInteractorToPresenterProtocol: class {
    func onGetDetailBookSuccess(body: ServerResponse<DetailBookResponse>, responseCode: Int)
    func onGetDetailBookFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetDetailBookLoading(isLoading: Bool)
}
