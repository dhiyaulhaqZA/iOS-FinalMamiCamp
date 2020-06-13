//
//  HomePresenterProtocol.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

protocol HomeViewToPresenterProtocol: class {
    var view: HomePresenterToViewProtocol? {get set}
    var interactor: HomePresenterToInteractorProtocol? {get set}
    var router: HomePresenterToRouterProtocol? {get set}
}

protocol HomePresenterToViewProtocol: class {
}

protocol HomePresenterToRouterProtocol: class {
    static func createModule(param: HomeParam) -> HomeViewController
}

protocol HomePresenterToInteractorProtocol: class {
    var presenter: HomeInteractorToPresenterProtocol? {get set}
}

protocol HomeInteractorToPresenterProtocol: class {
}
