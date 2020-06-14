//
//  GenreRouter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class GenreRouter: GenrePresenterToRouterProtocol {
    
    static func createModule(param: GenreParam) -> GenreViewController {
        let layout = UICollectionViewFlowLayout()
        let view = GenreViewController(collectionViewLayout: layout)
        let presenter: GenreViewToPresenterProtocol & GenreInteractorToPresenterProtocol = GenrePresenter()
        let interactor: GenrePresenterToInteractorProtocol = GenreInteractor()
        let router: GenrePresenterToRouterProtocol = GenreRouter()
        view.param = param
        view.title = ""
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
    
    func openBookScreen(navigationController: UINavigationController?, param: BookParam) {
        let targetVC = BookRouter.createModule(param: param)
        navigationController?.pushViewController(targetVC, animated: true)
    }
}
