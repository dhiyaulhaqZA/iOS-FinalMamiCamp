//
//  DetailBookRouter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class DetailBookRouter: DetailBookPresenterToRouterProtocol {
    
    static func createModule(param: DetailBookParam) -> DetailBookViewController {
        let layout = DZACollectionViewFlowLayout()
        let view = DetailBookViewController(collectionViewLayout: layout)
        let presenter: DetailBookViewToPresenterProtocol & DetailBookInteractorToPresenterProtocol = DetailBookPresenter()
        let interactor: DetailBookPresenterToInteractorProtocol = DetailBookInteractor()
        let router: DetailBookPresenterToRouterProtocol = DetailBookRouter()
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
