//
//  BookRouter.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

class BookRouter: BookPresenterToRouterProtocol {
    
    static func createModule(param: BookParam) -> BookViewController {
        let layout = UICollectionViewFlowLayout()
        let view = BookViewController(collectionViewLayout: layout)
        let presenter: BookViewToPresenterProtocol & BookInteractorToPresenterProtocol = BookPresenter()
        let interactor: BookPresenterToInteractorProtocol = BookInteractor()
        let router: BookPresenterToRouterProtocol = BookRouter()
        view.param = param
        view.title = ""
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        return view
    }
    
    func openDetailBookScreen(navigationController: UINavigationController?, param: DetailBookParam) {
        let targetVC = DetailBookRouter.createModule(param: param)
        navigationController?.pushViewController(targetVC, animated: true)
    }
}
