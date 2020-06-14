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
    
    func getNewBooks(param: GetNewBookBody)
    func getBookByGenre(param: GetBookBody)
    func openDetailBookScreen(navigationController: UINavigationController?, param: DetailBookParam)
}

protocol BookPresenterToViewProtocol: class {
    func onGetNewBooksSuccess(body: ServerResponse<[BookResponse]>, responseCode: Int)
    func onGetNewBooksFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetNewBooksLoading(isLoading: Bool)
    
    func onGetBooksByGenreSuccess(body: ServerResponse<[BookResponse]>, responseCode: Int)
    func onGetBooksByGenreFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetBooksByGenreLoading(isLoading: Bool)
}

protocol BookPresenterToRouterProtocol: class {
    static func createModule(param: BookParam) -> BookViewController
    
    func openDetailBookScreen(navigationController: UINavigationController?, param: DetailBookParam)
}

protocol BookPresenterToInteractorProtocol: class {
    var presenter: BookInteractorToPresenterProtocol? {get set}
    
    func getNewBooks(param: GetNewBookBody)
    func getBookByGenre(param: GetBookBody)
}

protocol BookInteractorToPresenterProtocol: class {
    func onGetNewBooksSuccess(body: ServerResponse<[BookResponse]>, responseCode: Int)
    func onGetNewBooksFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetNewBooksLoading(isLoading: Bool)
    
    func onGetBooksByGenreSuccess(body: ServerResponse<[BookResponse]>, responseCode: Int)
    func onGetBooksByGenreFailure(errMsg: String, responseCode: Int, errorCode: Int)
    func onGetBooksByGenreLoading(isLoading: Bool)
}
