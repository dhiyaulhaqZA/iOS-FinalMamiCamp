//
//  BookViewPresenterToView.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 14/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

extension BookViewController: BookPresenterToViewProtocol {
    func onGetNewBooksSuccess(body: ServerResponse<[BookResponse]>, responseCode: Int) {
        bookList = []
        bookList = body.result ?? []
        collectionView.reloadData()
    }
    
    func onGetNewBooksFailure(errMsg: String, responseCode: Int, errorCode: Int) {
        
    }
    
    func onGetNewBooksLoading(isLoading: Bool) {
        
    }
    

}
