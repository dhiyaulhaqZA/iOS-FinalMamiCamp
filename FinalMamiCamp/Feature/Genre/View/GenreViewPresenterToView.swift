//
//  GenreViewPresenterToView.swift
//  FinalMamiCamp
//
//  Created by Dhiya Ulhaq Zulha Alamsyah on 13/06/20.
//  Copyright © 2020 dhiyaulhaqza. All rights reserved.
//

import UIKit

extension GenreViewController: GenrePresenterToViewProtocol {
    
    func onGetGenresSuccess(body: GenreResponse, responseCode: Int) {
        genreList = []
        genreList = body.resource ?? []
        collectionView.reloadData()
    }
    
    func onGetGenresFailure(errMsg: String, responseCode: Int, errorCode: Int) {
        
    }
    
    func onGetGenresLoading(isLoading: Bool) {
        
    }

}
