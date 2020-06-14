//
//  TabBarPresenterProtocol.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

protocol TabBarViewToPresenterProtocol: class {
    var view: TabBarPresenterToViewProtocol? {get set}
    var interactor: TabBarPresenterToInteractorProtocol? {get set}
    var router: TabBarPresenterToRouterProtocol? {get set}
}

protocol TabBarPresenterToViewProtocol: class {
}

protocol TabBarPresenterToRouterProtocol: class {
    static func createModule(param: TabBarParam) -> TabBarViewController
}

protocol TabBarPresenterToInteractorProtocol: class {
    var presenter: TabBarInteractorToPresenterProtocol? {get set}
}

protocol TabBarInteractorToPresenterProtocol: class {
}
