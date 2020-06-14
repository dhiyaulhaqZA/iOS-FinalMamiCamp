//
//  BookPresenterProtocol.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

protocol BookViewToPresenterProtocol: class {
    var view: BookPresenterToViewProtocol? {get set}
    var interactor: BookPresenterToInteractorProtocol? {get set}
    var router: BookPresenterToRouterProtocol? {get set}
}

protocol BookPresenterToViewProtocol: class {
}

protocol BookPresenterToRouterProtocol: class {
    static func createModule(param: BookParam) -> BookViewController
}

protocol BookPresenterToInteractorProtocol: class {
    var presenter: BookInteractorToPresenterProtocol? {get set}
}

protocol BookInteractorToPresenterProtocol: class {
}
