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
}

extension DetailBookPresenter: DetailBookInteractorToPresenterProtocol {
}
