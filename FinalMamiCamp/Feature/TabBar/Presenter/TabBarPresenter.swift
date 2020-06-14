//
//  TabBarPresenter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import Foundation

class TabBarPresenter: TabBarViewToPresenterProtocol {
    var view: TabBarPresenterToViewProtocol?
    var interactor: TabBarPresenterToInteractorProtocol?
    var router: TabBarPresenterToRouterProtocol?
}

extension TabBarPresenter: TabBarInteractorToPresenterProtocol {
}
