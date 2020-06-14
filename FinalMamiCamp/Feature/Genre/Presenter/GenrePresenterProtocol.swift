//
//  GenrePresenterProtocol.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

protocol GenreViewToPresenterProtocol: class {
    var view: GenrePresenterToViewProtocol? {get set}
    var interactor: GenrePresenterToInteractorProtocol? {get set}
    var router: GenrePresenterToRouterProtocol? {get set}
    
    func getGenres()
}

protocol GenrePresenterToViewProtocol: class {
    func onGetGenresSuccess(body: GenreResponse, responseCode: Int)
    func onGetGenresFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetGenresLoading(isLoading: Bool)
}

protocol GenrePresenterToRouterProtocol: class {
    static func createModule(param: GenreParam) -> GenreViewController
}

protocol GenrePresenterToInteractorProtocol: class {
    var presenter: GenreInteractorToPresenterProtocol? {get set}
    
    func getGenres()
}

protocol GenreInteractorToPresenterProtocol: class {
    func onGetGenresSuccess(body: GenreResponse, responseCode: Int)
    func onGetGenresFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetGenresLoading(isLoading: Bool)
}
