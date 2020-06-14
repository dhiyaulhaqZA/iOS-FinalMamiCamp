//
//  TabBarRouter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class TabBarRouter: TabBarPresenterToRouterProtocol {
    
    static func createModule(param: TabBarParam) -> TabBarViewController {
        let view = TabBarViewController()
        let presenter: TabBarViewToPresenterProtocol & TabBarInteractorToPresenterProtocol = TabBarPresenter()
        let interactor: TabBarPresenterToInteractorProtocol = TabBarInteractor()
        let router: TabBarPresenterToRouterProtocol = TabBarRouter()
        view.param = param
        view.title = ""
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
}
