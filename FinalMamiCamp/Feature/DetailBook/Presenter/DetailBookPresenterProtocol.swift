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
}

protocol DetailBookPresenterToViewProtocol: class {
}

protocol DetailBookPresenterToRouterProtocol: class {
    static func createModule(param: DetailBookParam) -> DetailBookViewController
}

protocol DetailBookPresenterToInteractorProtocol: class {
    var presenter: DetailBookInteractorToPresenterProtocol? {get set}
}

protocol DetailBookInteractorToPresenterProtocol: class {
}
