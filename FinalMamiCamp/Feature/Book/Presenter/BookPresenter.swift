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
}

extension BookPresenter: BookInteractorToPresenterProtocol {
}
